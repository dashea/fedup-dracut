#!/bin/sh

echo "UPGRADEROOT=$UPGRADEROOT" > /run/initramfs/upgrade.conf

plymouth change-mode --updates && plymouth system-update --progress=0
