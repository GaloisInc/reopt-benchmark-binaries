FROM centos/devtoolset-7-toolchain-centos7

USER 0
# Installing debug info for libselinux ends up pulling in a lot of other
# common/core libs' debug info, so this seems like a useful place to start.

# ls /usr/lib/debug/usr/lib64/
RUN debuginfo-install --assumeyes --tolerant libselinux-2.5-14.1.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libgcc-4.8.5-39.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libstdc++-4.8.5-39.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libcap-2.22-10.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant ncurses-libs-5.9-14.20130511.el7_4.x86_64
RUN debuginfo-install --assumeyes --tolerant systemd-libs-219-67.el7_7.1.x86_64
RUN debuginfo-install --assumeyes --tolerant procps-ng-3.3.10-26.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libgomp-4.8.5-39.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libunistring-0.9.3-9.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libxml2-2.9.1-6.el7_2.3.x86_64
RUN debuginfo-install --assumeyes --tolerant glib2-2.56.1-5.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libcroco-0.6.12-4.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant gettext-libs-0.19.8.1-2.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libacl-2.2.51-14.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libassuan-2.1.0-3.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libgpg-error-1.12-3.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libgcrypt-1.5.3-14.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant readline-6.2-11.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant bzip2-libs-1.0.6-13.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant zlib-1.2.7-18.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libdb-5.3.21-25.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant expat-2.1.0-10.el7_3.x86_64
RUN debuginfo-install --assumeyes --tolerant dbus-libs-1.10.24-13.el7_6.x86_64
RUN debuginfo-install --assumeyes --tolerant dbus-glib-0.100-7.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libcurl-7.29.0-54.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant xz-libs-5.2.2-1.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant binutils-2.27-41.base.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant openssl-libs-1.0.2k-19.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libidn-1.28-4.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libsmartcols-2.23.2-61.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libattr-2.4.46-13.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant audit-libs-2.8.5-4.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant popt-1.13-16.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant nss-3.44.0-4.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant lua-5.1.4-15.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant elfutils-libelf-0.176-2.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant rpm-libs-4.11.3-40.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libuuid-2.23.2-61.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libmount-2.23.2-61.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libblkid-2.23.2-61.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant kmod-libs-20-25.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant lz4-1.7.5-3.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libuser-0.60-9.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant pam-1.1.8-22.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant nss-softokn-3.44.0-5.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant nspr-4.21.0-1.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant nss-util-3.44.0-3.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libcap-ng-0.7.5-4.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libffi-3.0.13-18.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant cracklib-2.9.0-11.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libpwquality-1.2.3-5.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant lzo-2.06-8.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libarchive-3.1.2-12.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant gmp-6.0.0-15.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant libutempter-1.1.6-4.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant qrencode-libs-3.4.1-3.el7.x86_64
RUN debuginfo-install --assumeyes --tolerant sqlite-3.7.17-8.el7.x86_64

USER 1001

