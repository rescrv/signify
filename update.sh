#!/bin/sh

if test -z "${OPENBSD_SOURCE}"; then
    echo Set the OPENBSD_SOURCE environment variable and try again
    exit 1
fi

cp ${OPENBSD_SOURCE}/usr.bin/signify/crypto_api.c .
cp ${OPENBSD_SOURCE}/usr.bin/signify/crypto_api.h .
cp ${OPENBSD_SOURCE}/usr.bin/signify/fe25519.c .
cp ${OPENBSD_SOURCE}/usr.bin/signify/fe25519.h .
cp ${OPENBSD_SOURCE}/usr.bin/signify/ge25519_base.data .
cp ${OPENBSD_SOURCE}/usr.bin/signify/ge25519.h .
cp ${OPENBSD_SOURCE}/usr.bin/signify/mod_ed25519.c .
cp ${OPENBSD_SOURCE}/usr.bin/signify/mod_ge25519.c .
cp ${OPENBSD_SOURCE}/usr.bin/signify/sc25519.c .
cp ${OPENBSD_SOURCE}/usr.bin/signify/sc25519.h .
cp ${OPENBSD_SOURCE}/usr.bin/signify/signify.1 .
cp ${OPENBSD_SOURCE}/usr.bin/signify/signify.c .
cp ${OPENBSD_SOURCE}/usr.bin/signify/signify.h .
cp ${OPENBSD_SOURCE}/usr.bin/signify/zsig.c .

cp ${OPENBSD_SOURCE}/include/blf.h .
cp ${OPENBSD_SOURCE}/include/sha2.h .

cp ${OPENBSD_SOURCE}/lib/libc/crypt/blowfish.c .
cp ${OPENBSD_SOURCE}/lib/libc/hash/sha2.c .
cp ${OPENBSD_SOURCE}/lib/libc/hash/helper.c .
cp ${OPENBSD_SOURCE}/lib/libc/net/base64.c .
cp ${OPENBSD_SOURCE}/lib/libc/string/explicit_bzero.c .
cp ${OPENBSD_SOURCE}/lib/libc/string/timingsafe_bcmp.c .

cp ${OPENBSD_SOURCE}/lib/libutil/bcrypt_pbkdf.c .
cp ${OPENBSD_SOURCE}/lib/libutil/ohash.c .
cp ${OPENBSD_SOURCE}/lib/libutil/ohash.h .

sed -e 's/hashinc/sha2.h/g' \
	-e 's/HASH/SHA256/g' \
	-e 's/SHA[0-9][0-9][0-9]_CTX/SHA2_CTX/g' helper.c > sha256hl.c

sed -e 's/hashinc/sha2.h/g' \
	-e 's/HASH/SHA512/g' \
	-e 's/SHA[0-9][0-9][0-9]_CTX/SHA2_CTX/g' helper.c > sha512hl.c

sed -e 's/hashinc/sha2.h/g' \
    -e 's/HASH/SHA512_256/g' \
    -e 's/SHA512_256_CTX/SHA2_CTX/g' helper.c > sha512_256hl.c

patch -p1 < portability.patch
