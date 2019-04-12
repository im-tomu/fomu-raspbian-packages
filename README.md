# Fomu Raspberry Pi Repo

To use this, create a sources.list entry:

```sh
$ echo 'deb https://repo.fomu.im/debian/ stretch main' | sudo tee /etc/apt/sources.list.d/fomu.list
$ wget -O - https://repo.fomu.im/tomu-signing-key.asc | apt-key add -
```

Or, install the fomu-repository package from https://repo.fomu.im/fomu-repository-latest.deb

## Setting up

```sh
$ sudo apt-get install reprepro
```

## Listing repo contents

```sh
$ reprepro --basedir $(pwd)/debian list stretch
stretch|main|armhf: fomu-flash 1.3.2
stretch|main|armhf: icestorm 0.0.2-fa1c932452e8efe1dfcc6ff095e3f7130a7906b1
stretch|main|armhf: lm32-toolchain 8.3.0-fomu
stretch|main|armhf: nextpnr-ice40 0.0.3-6adf37e3c1d4301e087d89c9e9c37563fe8d78df
stretch|main|armhf: riscv-toolchain 8.2.0-before-fsf-gdb-2-g411d134
stretch|main|armhf: yosys 0.8-615-gdfb242c9
$
```

## Adding packages

```sh
$ reprepro --basedir $(pwd)/debian includedeb stretch ${PACKAGE_FILE}.deb
Exporting indices...
```