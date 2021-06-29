# reopt-benchmark-binaries
Binaries used to test and benchmark reopt.

+ `centos7-dev-bin.tar.lzma` is the compressed `/usr/bin` directory from the Red Hat Developer Toolset 7 Toolchain Docker container image ([centos/devtoolset-7-toolchain-centos7](https://hub.docker.com/r/centos/devtoolset-7-toolchain-centos7/)).

+ `centos7-dev-lib64.tar.lzma` is the compressed `/usr/lib64` directory from the Red Hat Developer Toolset 7 Toolchain Docker container image ([centos/devtoolset-7-toolchain-centos7](https://hub.docker.com/r/centos/devtoolset-7-toolchain-centos7/)).

+ `centos7-dev-debug-lib64.tar.lzma` is the compressed `/usr/lib/debug/lib64` directory from the Red Hat Developer Toolset 7 Toolchain Docker container image ([centos/devtoolset-7-toolchain-centos7](https://hub.docker.com/r/centos/devtoolset-7-toolchain-centos7/)) _after_ running `debuginfo-install --assumeyes --tolerant libselinux-2.5-14.1.el7.x86_64`. (See the `Dockerfile` in the root of this repository.)
