from BClima import app
from flask import jsonify, request, render_template
import random
@app.route('/api')
def index():
    y = []
    for x in range(10):
        temp = random.randint(0, 40)
        hum = random.randint(1050, 1150)
        algo = {'Temperatura':temp, 'Humedad':hum}
        y.append(algo)
    return jsonify(y)

@app.route('/')
def home():
    return render_template('Principal.html')

@app.route('/Registros')
def registro():
    return render_template('Registro.html')
