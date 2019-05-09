# Raspberry Pi LED Control

Simple API written in Python by using `gpiozero` and `flask` libraries. 

## Installation

Clone this repo to `/home/pi/led-control`. Copy services to systemd.

```
sudo cp /home/pi/led-control/services/led-control-api.service /etc/systemd/system/
sudo cp /home/pi/led-control/services/led-control-app.service /etc/systemd/system/
```

Enable services.

```
sudo systemctl enable led-control-api
sudo systemctl enable led-control-app
```

Start services.

```
sudo systemctl start led-control-api
sudo systemctl start led-control-app
```

## Usage

Connect your Pi to the network and find out your IP address.

```
hostname -I
```

Use IP address returned in your browser.

```
http://193.167.5.183
```

## Dependencies

You need to have `python3` installed in `/usr/bin/python3`. And the following libraries.

- `gpiozero`
- `flask`
- `flask-cors` (if using app from remote computer)

All libraries should be installed using `pip3`.

