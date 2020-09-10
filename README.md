# `platformio-freebsd-toolchain-xtensa32`

Trick `platformio` so that it thinks `toolchain-xtensa32`, a `platformio`
package, is installed.

## Rationale

Same as in
[`trombik/platformio-freebsd-toolchain-xtensa`](https://github.com/trombik/platformio-freebsd-toolchain-xtensa).


## What it does

`init.sh` creates symlinks to the directories where the system package
installed the tool-chain, and creates `package.json`.

## Requirements

Install the following packages.

- `devel/xtensa-esp32-elf`

Note that [`devel/xtensa-esp32-elf`](https://www.freshports.org/devel/xtensa-esp32-elf/)
in the official ports tree is not the latest version (as of 2020-09-10). You
might need to use my version of `xtensa-esp32-elf`, which is still in beta.

## Usage

```console
cd ~/.platformio/packages
git clone https://github.com/trombik/platformio-freebsd-toolchain-xtensa32.git toolchain-xtensa32
cd toolchain-xtensa32
./init.sh
```

`init.sh` creates symlinks and `package.json`.

## Further improvement

The script should be able to support other OSes, such as OpenBSD as long as a
package for the OS is provided.
