from flask import Flask, escape, request
import decimal
import flask.json
import os


class MyJSONEncoder(flask.json.JSONEncoder):
    def default(self, obj):
        if isinstance(obj, decimal.Decimal):
            #Convierte instancias decimales en strings
            return int(obj)
        return super(MyJSONEncoder, self).default(obj)

app = Flask(__name__)
app.json_encoder = MyJSONEncoder

from routes.index import *


if __name__=="__main__":
    app.debug = False
    host = os.environ.get('IP','0.0.0.0')
    port = int(os.environ.get('PORT',8000))
    app.run(host = host, port=port)
