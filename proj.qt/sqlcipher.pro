TEMPLATE = lib
CONFIG += staticlib


CONFIG(debug, debug|release) {
    DESTDIR = $$PWD/bin/debug/
} else {
    DESTDIR = $$PWD/bin/release/
}

INCLUDEPATH += ../src/
DEFINES += SQLCIPHER_CRYPTO_LIBTOMCRYPT SQLITE_HAS_CODEC SQLITE_TEMP_STORE=2

include($$PWD/../../libtomcrypt/proj.qt/libtomcrypt.pri)

SOURCES += \
    ../src/sqlite3.c
    


HEADERS += \
    ../src/sqlite3ext.h \
    ../src/sqlite3.h
    
