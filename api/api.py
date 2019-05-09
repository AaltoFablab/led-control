from flask import Flask
from gpiozero import LED
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

leds = [LED(2), LED(3), LED(4)]
for led in leds:
	led.on()

@app.route('/')
def greetUser():
	return 'Welcome to wonderland!'

@app.route('/led/<int:ledId>/on')
def ledOn(ledId):
	leds[ledId].on()
	return leds[ledId].is_lit

@app.route('/led/<int:ledId>/off')
def ledOff(ledId):
	leds[ledId].off()
	return leds[ledId].is_lit

if __name__ == '__main__':
	app.run(host='0.0.0.0', port=8080)

