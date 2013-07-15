#include <QtGui/QGuiApplication>
#include <QtWidgets/QApplication>
#include <QtQuick/QQuickView>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQuickView viewer;
    viewer.setSource(QUrl(QApplication::applicationDirPath() + "/../Resources/qml/testdeployqml/main.qml"));
    viewer.show();

    return app.exec();
}
