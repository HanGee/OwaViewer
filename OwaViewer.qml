import QtQuick 2.7
import QtQuick.Dialogs 1.2
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

ApplicationWindow {
	id: parent;
	visible: true;
	color: 'black';
	title: 'OwaViwer';
	width: 640;
	height: 480;

	FileDialog {
		id: fileDialog;
		onAccepted: {
			loader.source = fileUrl;
			parent.close();
		}
	}

	Loader {
		id: loader;
		active: true;
	}

	Component.onCompleted: {
		fileDialog.open();
	}
}
