TEMPLATE = app

QT += qml quick multimedia widgets webengine webview websockets

CONFIG += static

SOURCES += main.cpp

RESOURCES += qml.qrc

ICON = OwaViewer.png

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)
