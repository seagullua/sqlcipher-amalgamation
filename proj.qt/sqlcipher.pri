INCLUDEPATH += $$PWD/../src
DEFINES += SQLCIPHER_CRYPTO_LIBTOMCRYPT SQLITE_HAS_CODEC SQLITE_TEMP_STORE=2
CONFIG(debug, debug|release) {
    LIBS += -L$$PWD/bin/debug/ -lsqlcipher
	PRE_TARGETDEPS += $$PWD/bin/debug/sqlcipher.lib
} else {
    LIBS += -L$$PWD/bin/release/ -lsqlcipher
	PRE_TARGETDEPS += $$PWD/bin/release/sqlcipher.lib
}
