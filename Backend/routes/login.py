from BClima import app, mydb
from flask import jsonify, request, render_template
import mysql.connector
import hashlib, binascii
#se genero la llave
#from cryptography.fernet import Fernet
#import base64
#from cryptography.hazmat.backends import default_backend
#from cryptography.hazmat.primitives import hashes
#from cryptography.hazmat.primitives.kdf.pbkdf2 import PBKDF2HMAC
#key = Fernet.generate_key()
#print(key)
#file = open('key.key', 'wb')  # Open the file as wb to write bytes
#file.write(key)  # The key is type bytes still
#file.close()

@app.route('/login')
def login():
    return render_template('hello.html')

@app.route("/postRegistro", methods=["POST","GET"])
def postRegistro():
    data = request.form.to_dict()
    email = data['email'] 
    name = data['name']
    passw = data['pass']
    print(cripassword(passw) == cripassword(passw))
    passw = cripassword(passw)
    try:
        cnx = mysql.connector.connect(**mydb)
        cur = cnx.cursor()
        try:
            query = "INSERT INTO Users (Users_Name,Users_Correo,Users_Password) VALUES ('%s', '%s', '%s');"%(name, email, passw)
            cur.execute(query)
            cnx.commit()
            return jsonify({'msg':str(data)})
        except Exception as e:
            return jsonify({'msg':'ERROR:'+str(e)})
        finally:
            cur.close()
            cnx.close()
    except Exception as e:
        return jsonify({'msg':str(e)})

@app.route("/getRegistro", methods=["POST","GET"])
def getRegistro():
    data = request.args.to_dict()
    email = data['email']
    contra = data['pass']
    try:
        cnx = mysql.connector.connect(**mydb)
        cur = cnx.cursor(buffered=True)
        arr = []
        nombres = ["Id","Nombre", "Correo", "Password"]
        try:
            cur.execute("SELECT * FROM Users WHERE Users_Correo="+email+";")
            result = [dict(zip(nombres,x)) for x in cur]
            contra = cripassword(contra)
            print(result[0]['Password'].encode('utf-8').decode('hex'))
            print(contra.encode('utf-8').decode('hex'))
            print()
            if result[0]['Password'].encode('utf-8') == contra.encode('utf-8'):
                return jsonify(True)
            else:
                return jsonify(False)
        except Exception as e:
            return jsonify({'msg':'ERROR:'+str(e)})
        finally:
            cur.close()
            cnx.close()
    except Exception as e:
        return jsonify({'msg':str(e)})

def cripassword(password_orig):
    key = hashlib.pbkdf2_hmac(
        'sha224',
        password_orig.encode('utf-8'),
        b'FabricaSoftware$2020',
        100000,
        dklen=128
    )
    hashpass = binascii.hexlify(key)
    return hashpass.decode('utf-8')