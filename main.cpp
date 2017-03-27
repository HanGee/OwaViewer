#include <QObject>
#include <QApplication>
#include <QQmlApplicationEngine>
#include <QDir>
#include <QFile>
#include <QFileInfo>
#include <QtWebEngine>
#include <QFileDialog>

int main(int argc, char *argv[])
{
	QApplication app(argc, argv);

	app.setApplicationName("OwaViewer");
	app.setOrganizationName("HanGee OwaNEXT");
	app.setOrganizationDomain("han-gee.com");

#if defined(Q_OS_MACX)
	QCoreApplication::addLibraryPath(QCoreApplication::applicationDirPath() + "/../PlugIns");
#endif

	QQmlApplicationEngine engine;
	QString qmlPath;

	if (argc < 2) {
		printf("Usage: OwaViewer [directory]\n");
		printf("   or: OwaViewer [File]\n");
		printf("   or: OwaViewer --demo\n");
		qmlPath = QString("qrc:/OwaViewer.qml");
	} else if (QString(argv[1]) == "--demo") {
		qmlPath = QString("qrc:/tests/test.qml");
	} else {

		QDir dirPath(argv[1]);

		// It's a directory
		if (QFileInfo(dirPath.path()).isDir()) {

			// Trying to read QML file in the directory
			qmlPath = dirPath.filePath("app.qml");
			if (!QFile(qmlPath).exists()) {

				qmlPath = dirPath.filePath("App.qml");
				if (!QFile(qmlPath).exists()) {
					printf("Cannot find application in the directory.\n");
					return 1;
				}
			}
		} else {

			// Whether does the QML file exists or not?
			qmlPath = dirPath.path();
			if (!QFile(qmlPath).exists()) {
				printf("OwaNEXT Application doesn't exist.\n");
				return -1;
			}
		}
	}

	QObject::connect(&engine, SIGNAL(quit()), QCoreApplication::instance(), SLOT(quit()));

	// Initializing WebEngine and WebView
	QtWebEngine::initialize(); 

	// Run it
	engine.load(QUrl(qmlPath));
	if (engine.rootObjects().isEmpty())
		return -1;

	return app.exec();
}
