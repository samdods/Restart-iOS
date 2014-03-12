Restart-iOS
===========

# How to restart iOS in 20 lines of code

Download this project and install the app on your iOS device. It will allow you to restart the operating system with the tap of the screen!

# Requirements

Only works on *iOS 7.1* with iPhone 5 or older (including iPhone 5c).
i.e. it will not work on iPhone 5s.

# Disclaimer

This works by taking advantage of a bug in *backboardd*, the daemon that runs alongside the SpringBoard daemon. The few lines of code in the app cause the daemon to crash, in turn causing SpringBoard to restart. The daemon has been witnessed to get into a state whereby this crash doesn't occur, and under such conditions, this app will not work. If this is the case for you -- and you have confirmed your device meets the Requirements -- please restart your device manually to witness this great app in action.

# Disclaimer #2

If you hadn't realised already, this is kind of a joke. I wouldn't expect an app of any size to cause the operating system to crash, least of all an app written in only 20 lines of code. Apple have been made aware of this and are investigating it.

Hopefully with this app in mind, if you notice strange things in your own apps causing the backboardd daemon to terminate after updating to iOS 7.1, you will be able to diagnose the problem more easily.
