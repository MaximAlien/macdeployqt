QT       += core gui quick

TARGET = testdeployqml

SOURCES += main.cpp

macx{
    QML.files = qml
    QML.path = Contents/Resources
    QMAKE_BUNDLE_DATA += QML
}

OTHER_FILES += \
    qml/testdeployqml/main.qml


