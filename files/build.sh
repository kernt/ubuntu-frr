#!/bin/bash
git clone https://github.com/frrouting/frr.git frr
cd frr
./bootstrap.sh
./configure \
    --prefix=/usr \
    --enable-exampledir=/usr/share/doc/frr/examples/ \
    --localstatedir=/var/run/frr \
    --sbindir=/usr/lib/frr \
    --sysconfdir=/etc/frr \
    --enable-pimd \
    --enable-watchfrr \
    --enable-ospfclient=yes \
    --enable-ospfapi=yes \
    --enable-multipath=64 \
    --enable-user=frr \
    --enable-group=frr \
    --enable-vty-group=frrvty \
    --enable-configfile-mask=0640 \
    --enable-logfile-mask=0640 \
    --enable-rtadv \
    --enable-fpm \
    --enable-systemd=yes \
    --with-pkg-git-version \
    --with-pkg-extra-version=-MyOwnFRRVersion
make
make check
sudo make install
