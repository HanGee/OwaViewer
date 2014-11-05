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

Before packing, you should compile OwaViewer as release version:
```
$ qmake CONFIG+=release
$ make
```

Then you can start packing for the specific platform what you want:

Packing for Mac OSX:
```
macdeployqt OwaViewer.app -dmg -always-overwrite -qmldir=./tests
pkgbuild --identifier com.hangee.owaviewer --root ./OwaViewer.app/ --scripts ./scripts/mac --install-location /Applications/OwaViewer.app OwaViewer.pkg
```

Packing for Windows:
```
windeployqt .
```

License
-
MIT
