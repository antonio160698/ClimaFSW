from BClima import app 
from flask import jsonify
import random
@app.route('/')
def index():
    y = []
    for x in range(10):
        temp = random.randint(0, 40)
        hum = random.randint(1050, 1150)
        algo = {'Temperatura':temp, 'Humedad':hum}
        y.append(algo)
    return jsonify(y)