#!/bin/sh

: ${PREFIX:="/usr/local"}
: ${XTENSA_ESP32_ELF_DIR:="${PREFIX}/xtensa-esp32-elf"}
VERSION="2.80200.0"
ARCH=`uname -p`
OS=`uname -s | tr '[[:upper:]]' '[[:lower:]]'`

if [ ! -z $1 ]; then
    VERSION="$1"
fi

for D in bin include lib libexec share xtensa-esp32-elf; do
    ln -s -f ${XTENSA_ESP32_ELF_DIR}/${D} .
done

cat <<__EOF__ >package.json
{
    "description": "xtensa-gcc",
    "name": "toolchain-xtensa32",
    "system": [
        "${OS}_${ARCH}"
    ],
    "url": "https://github.com/trombik/platformio-freebsd-toolchain-xtensa32",
    "version": "${VERSION}"
}
__EOF__
