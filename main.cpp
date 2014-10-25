#include <QApplication>
#include <QQmlApplicationEngine>
#include <QDir>
#include <QFile>
#include <QFileInfo>

int main(int argc, char *argv[])
{
	QApplication app(argc, argv);

	QQmlApplicationEngine engine;

	if (argc < 2) {
		printf("Usage: OwaViewer [directory]\n");
		return 1;
	}

	QDir dirPath(argv[1]);
	QString qmlPath;

	// It's a directory
	if (QFileInfo(dirPath.path()).isDir()) {

		// Trying to read QML file in the directory
		qmlPath = dirPath.filePath("app.qml");
		if (!QFile(qmlPath).exists()) {

			qmlPath = dirPath.filePath("App.qml");
			if (!QFile(qmlPath).exists()) {
				printf("OwaNEXT Application doesn't exist.\n");
				return 1;
			}
		}
	}

	engine.load(QUrl(qmlPath));

	return app.exec();
}
