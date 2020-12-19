## Account moved to: https://gitlab.com/illwill 

also check out Account moved to: https://gitlab.com/illwill 

this will also be moved to: https://github.com/bsides-ct


# BSidesCT Badge

BSidesCT Badge  has 2 functionaillies, for the conference the badge is just a blinky badge with a few different patterns that change when you press the momentary switch on the back, it is also a stealth HID injector based of the μDuck. It's a very small USB device that acts like a scripted keyboard. This can be used for automation and lulz, and has obvious security implications. It's similar in functionality to the [Hak5 Rubber Ducky](https://hakshop.com/products/usb-rubber-ducky-deluxe), and even uses the [same syntax](https://github.com/hak5darren/USB-Rubber-Ducky/wiki/Payloads) to define the scripted input.

![Board](https://i.imgur.com/ULJJUVh.jpg)
![Board](https://i.imgur.com/8CCQu3u.jpg)

## WARNING - DO NOT PLUG INTO USB WITH A BATTERY

![Board](https://i.imgur.com/ywcpnt5.png)

You can use the badge with a USB extender if you dont want to break the HID portion off, but make sure theres no battery in the battery holder



When the badge is connected, it will wait 2 seconds in programming mode before switching to a keyboard. This is to allow the payload to be updated with the Python tool provided. It will wait 5 seconds before the first HID injection, then retry the payload automatically at 60 seconds, 5 minutes, and then every 4 hours with +/- 1 hour of random variance. This ensures reliable delivery, but expect that your payload may run more than once.

After the conference you have the option to break off the HID portion of the badge to use as its own device. The initial payload is a Windows Payload that dumps ALL stored WiFi SSID's and passwords to a log.txt on the current users desktop.

## Changing payloads on Windows
Download [Python 2.7](https://www.python.org/downloads/release/python-2714/) and install it.

Add python to your path:

	1. Open System Properties (type it in the start menu, or use the keyboard shortcut Win+Pause)
	2. Switch to the Advanced tab
	3. Click Environment Variables
	4. Select PATH in the System variables section
	5. Click Edit
	6. Add python's path to the end of the list (the paths are separated by semicolons). 
  For example:
 C:\Windows;C:\Windows\System32;C:\Python27


Download [.zip](https://github.com/xillwillx/uDuck/archive/master.zip) or Git this repo. Open a CMD prompt inside μduck-master directory 
and type:
```
pip install -r requirements.txt
```
After the requiremenst are installed, choose whichever payload you want to flash to the device
```
uduck_upload.py \payloads\Dump_WiFi_Creds.txt
```
then plug in the device, your device should be update with the new payload, unplug and plug in to test.

## Changing payloads on Linux
Check to make sure you have python 2.7 installed. Git clone this repository. cd into the uduck-master directory and run
```
pip install -r requirements.txt
```
After the requiremenst are installed, choose whichever payload you want to flash to the device
```
uduck_upload.py /payloads/Dump_WiFi_Creds.txt
```
plug in your device and the new payload will be flashed to the device.

## Credits and License
Board Design and art by: Cobey Smith, Will Genovese, and Patrick Tassos

The hardware is borrowed from [μDuck](https://github.com/insecurityofthings/uDuck) & [this blog](http://www.morethantechnical.com/2015/08/03/smallest-attiny45-usb/). 

The software is a modified version of [CapsLocker](http://macetech.com/blog/?q=node/46).

The Python code and hardware designs MIT licensed. The USB firmware is licensed [according to the terms](https://www.obdev.at/products/vusb/license.html) of Objective Development's vUSB and GPLv2.

LED firmware code addition and schematic by Cobey Smith
Payload examples by [Will Genovese](https://github.com/xillwillx)
