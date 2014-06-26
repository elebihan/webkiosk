TEMPLATE = app
QT += qml quick webkit

TARGET = webkiosk

SOURCES += \
    src/main.cpp

OTHER_FILES += \
    qml/main.qml

RESOURCES += \
    webkiosk.qrc

unix {
    isEmpty(PREFIX) {
        PREFIX = /usr
    }
    BINDIR = $$PREFIX/bin
    DATADIR = $$PREFIX/share

    target.path = $$BINDIR

    INSTALLS += target
}
