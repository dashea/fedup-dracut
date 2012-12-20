#!/bin/sh

if [ -d "${NEWROOT}${UPGRADEROOT}" ] && [ -L "${NEWROOT}${UPGRADELINK}" ]; then
    echo "UPGRADEROOT=$UPGRADEROOT" > /run/initramfs/upgrade.conf
    echo "UPGRADELINK=$UPGRADELINK" >> /run/initramfs/upgrade.conf
    plymouth pause-progress
fi
