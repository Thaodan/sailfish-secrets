TEMPLATE = lib
CONFIG += plugin hide_symbols link_pkgconfig
TARGET = sailfishsecrets-openssl
TARGET = $$qtLibraryTarget($$TARGET)
PKGCONFIG += libcrypto

include($$PWD/../../common.pri)
include($$PWD/../../lib/libsailfishsecretspluginapi.pri)

INCLUDEPATH += $$PWD/../opensslcryptoplugin/evp/
DEPENDPATH += $$PWD/../opensslcryptoplugin/evp/

HEADERS += \
    $$PWD/../opensslcryptoplugin/evp/evp_p.h \
    $$PWD/plugin.h
SOURCES += \
    $$PWD/../opensslcryptoplugin/evp/evp.cpp \
    $$PWD/plugin.cpp

target.path=$$[QT_INSTALL_LIBS]/Sailfish/Secrets/
INSTALLS += target
