TEMPLATE = subdirs
SUBDIRS = lib qml daemon plugins tests tools examples 3rdparty

qml.depends = lib
daemon.depends = lib
plugins.depends = lib
tests.depends = lib
tools.depends = lib
examples.depends = lib

OTHER_FILES += \
    $$PWD/LICENSE \
    $$PWD/README.md \
    $$PWD/rpm/sailfish-secrets.spec \
    $$PWD/daemon/sailfish-secretsd.service \
    $$PWD/daemon/sailfish-secretsd.privileges \
    $$PWD/daemon/org.sailfishos.secrets.daemon.discovery.service
