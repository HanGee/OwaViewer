import QtQuick 2.7
import QtQuick.Dialogs 1.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Particles 2.0
import QtQuick.LocalStorage 2.0
import QtQuick.XmlListModel 2.0
import QtWebSockets 1.0
import Qt.labs.folderlistmodel 2.1
import Qt.labs.settings 1.0
import QtQml.Models 2.1
import QtGraphicalEffects 1.0
import QtMultimedia 5.6
import QtWebView 1.1
import QtWebEngine 1.2
import QtAudioEngine 1.0
import QtBluetooth 5.2
import QtQuick.Extras 1.4
import Qt3D.Core 2.0
import QtSensors 5.0

// Charts
import QtCharts 2.1
import QtDataVisualization 1.2

ApplicationWindow {
	visible: true;
	color: 'black';
	title: 'OwaViwer';
	width: 640;
	height: 480;

	Text {
		anchors.centerIn: parent;
		text: 'OwaViewer';
		font.family: 'Helvetica';
		font.bold: true;
		font.pointSize: 48;
		color: '#00ffcc';
		scale: 0;
		opacity: 0;

		Text {
			anchors.top: parent.bottom; 
			anchors.horizontalCenter: parent.horizontalCenter;
			text: 'Show off your amazing UI here';
			font.family: 'Helvetica';
			font.pointSize: 16;
			color: '#e6fffa';
		}

		Behavior on opacity {
			NumberAnimation {
				duration: 800;
				easing.type: Easing.OutCubic;
			}
		}

		Behavior on scale {
			NumberAnimation {
				duration: 1000;
				easing.type: Easing.OutBack;
			}
		}

		Component.onCompleted: {
			opacity = 1.0;
			scale = 1.0;
		}
	}
}
