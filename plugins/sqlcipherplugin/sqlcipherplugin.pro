TEMPLATE = lib
CONFIG += plugin hide_symbols link_pkgconfig
TARGET = sailfishsecrets-sqlcipher
TARGET = $$qtLibraryTarget($$TARGET)
PKGCONFIG += libcrypto

include($$PWD/../../common.pri)
include($$PWD/../../lib/libsailfishsecretspluginapi.pri)
include($$PWD/../../lib/libsailfishcryptopluginapi.pri)
include($$PWD/../../database/database.pri)

INCLUDEPATH += . $$PWD/../opensslcryptoplugin $$PWD/../opensslcryptoplugin/evp/
DEPENDPATH += . $$PWD/../opensslcryptoplugin $$PWD/../opensslcryptoplugin/evp/

HEADERS += \
    $$PWD/../opensslcryptoplugin/evp/evp_p.h \
    $$PWD/../opensslcryptoplugin/evp/evp_helpers_p.h \
    $$PWD/../opensslcryptoplugin/opensslcryptoplugin.h \
    $$PWD/sqlcipherplugin.h

SOURCES += \
    $$PWD/../opensslcryptoplugin/evp/evp.cpp \
    $$PWD/../opensslcryptoplugin/opensslcryptoplugin.cpp \
    $$PWD/sqlcipherplugin.cpp \
    $$PWD/encryptedstorageplugin.cpp \
    $$PWD/cryptoplugin.cpp

target.path=$$[QT_INSTALL_LIBS]/Sailfish/Secrets/
INSTALLS += target
