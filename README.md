OwaViewer
=========

OwaViewer is an utility to simulate environment for running OwaNEXT application. It aims to make developer to run QML file and OwaNEXT application without actually installing Qt SDK.

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

For Windows:
```
windeployqt .
```

License
-
MIT
