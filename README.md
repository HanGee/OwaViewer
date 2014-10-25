OwaViewer
=========

OwaViewer is an utility to simulate environment for running OwaNEXT application.

Usage
-

You can use OwaViewer to open specific QML file to run directly: 

```
OwaViewer /home/user/yourproject/App.qml
```

Build Application
-

You must have Qt development environment on your computer then start to build OwaViewer with commands below:
```
$ qmake
$ make
```

Deployment
-

Packing OwaViewer is possible to do for different platform after building application.

For Mac OSX:
```
macdeployqt OwaViewer.app -dmg
```

License
-
MIT
