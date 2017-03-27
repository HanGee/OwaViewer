OwaViewer
=========

OwaViewer is an utility like qmlscene to simulate environment for running OwaNEXT application. It aims to make developer to run QML application and OwaNEXT application without installing Qt SDK.

Usage
-

You can use OwaViewer to open specific QML file to run directly: 

```
OwaViewer /home/user/yourproject/App.qml
```

QML Components
-
The following components are supported:
```
QtQuick 2.7
QtQuick.Dialogs 1.2
QtQuick.Window 2.2
QtQuick.Controls 1.4
QtQuick.Controls 2.0
QtQuick.Layouts 1.3
QtQuick.Particles 2.0
QtQuick.LocalStorage 2.0
QtQuick.XmlListModel 2.0
QtWebSockets 1.0
Qt.labs.folderlistmodel 2.1
Qt.labs.settings 1.0
QtQml.Models 2.1
QtGraphicalEffects 1.0
QtMultimedia 5.6
QtWebView 1.1
QtWebEngine 1.2
QtAudioEngine 1.0
QtBluetooth 5.2
QtQuick.Extras 1.4
Qt3D.Core 2.0
QtSensors 5.0
QtCharts 2.1
QtDataVisualization 1.2
```

Build OwaViewer
-

You must have Qt development environment on your computer then start to build OwaViewer with commands below:
```shell
$ qmake
$ make
```

Deployment
-

Packing OwaViewer is possible to do for different platform after building application.

Before packing, you should compile OwaViewer as release version:
```shell
$ qmake CONFIG+=release
$ make
```

Then you can start packing for the specific platform what you want:

### Packing for Mac OSX:
```shell
$ sh mkmacicns.sh
$ macdeployqt OwaViewer.app -always-overwrite -qmldir=./tests -executable=OwaViewer.app/Contents/MacOS/OwaViewer
$ pkgbuild --identifier com.hangee.owaviewer --root ./OwaViewer.app/ --scripts ./scripts/mac --install-location /Applications/OwaViewer.app OwaViewer.pkg
```
_Note: There is a critical bug on Qt 5.7.1+ cause macdeployqt doesn't work. Try to run it without `-always-overwrite` options to avoid this problem._

### Packing for Windows:
```shell
$ windeployqt .
```

License
-
MIT
