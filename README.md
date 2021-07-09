# reopt-benchmark-binaries
Binaries used to test and benchmark reopt.

The `scripts/generate_centos7_lzmas.sh` will generate the following compressed archives:

+ `centos7-dev/bin/bin.tar.lzma` is the compressed `/usr/bin` directory from the `Dockerfile` image.

+ `centos7-dev/lib64/lib64.tar.lzma` is the compressed `/usr/lib64` directory from the `Dockerfile` image.

+ `centos7-dev/debug-lib64/debug-lib64.tar.lzma` is the compressed `/usr/lib/debug/lib64` directory from the `Dockerfile` image.
