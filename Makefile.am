if MAKE_NO_PRINT_DIRECTORY
AM_MAKEFLAGS = --no-print-directory
endif

EXTRA_DIST =
EXTRA_DIST += README
EXTRA_DIST += update.sh
EXTRA_DIST += portability.patch

bin_PROGRAMS = signify
dist_man_MANS = signify.1

noinst_HEADERS =
noinst_HEADERS += blf.h
noinst_HEADERS += crypto_api.h
noinst_HEADERS += fe25519.h
noinst_HEADERS += ge25519.h
noinst_HEADERS += ohash.h
noinst_HEADERS += sc25519.h
noinst_HEADERS += sha2.h
noinst_HEADERS += signify.h

EXTRA_DIST += ge25519_base.data
EXTRA_DIST += helper.c

signify_SOURCES =
signify_SOURCES += base64.c
signify_SOURCES += bcrypt_pbkdf.c
signify_SOURCES += blowfish.c
signify_SOURCES += crypto_api.c
signify_SOURCES += explicit_bzero.c
signify_SOURCES += fe25519.c
signify_SOURCES += mod_ed25519.c
signify_SOURCES += mod_ge25519.c
signify_SOURCES += ohash.c
signify_SOURCES += sc25519.c
signify_SOURCES += sha2.c
signify_SOURCES += sha256hl.c
signify_SOURCES += sha512hl.c
signify_SOURCES += sha512_256hl.c
signify_SOURCES += signify.c
signify_SOURCES += timingsafe_bcmp.c
signify_SOURCES += zsig.c
signify_LDADD = ${BSDLIB}
