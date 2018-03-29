#!/usr/bin/env bash

set -eux

TOPDIR=$1
ROOTFSREL=rootfs
ROOTFS=${TOPDIR}/${ROOTFSREL}

CURDIR="$(dirname $(readlink -f $0))"

sudo bash -c "chroot ${ROOTFS} umount /proc || true"
sudo rm -rf ${ROOTFS}
