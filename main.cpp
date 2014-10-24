#include <QApplication>
#include <QQmlApplicationEngine>
#include <QDir>
#include <QFile>

int main(int argc, char *argv[])
{
	if (argc < 2) {
		printf("Usage: OwaViewer [directory]\n");
		return 1;
	}

	QDir dirPath(argv[1]);
	QString qmlPath = dirPath.filePath("app.qml");

	if (!QFile(qmlPath).exists()) {
		printf("OwaNEXT Application doesn't exist.\n");
		return 1;
	}

	QApplication app(argc, argv);

	QQmlApplicationEngine engine;
	engine.load(QUrl(qmlPath));

	return app.exec();
}
