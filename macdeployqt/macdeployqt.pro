TARGET = macdeployqt

SOURCES += main.cpp \
    shared.cpp

HEADERS += \
    shared.h

CONFIG-=app_bundle

target.path = /usr/local/bin
INSTALLS += target


