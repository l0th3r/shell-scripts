#!/bin/sh
# In a window subsystem, unmount a volume in /mnt/ folder.
# most used with usb key or external drives.
#
# In argument 1, pass the drive's letter.
# exemple: "source unmount_external_volume.sh f" (will unmount the F: volume)

if [ ${#1} -ge 2 ] || [ -z $1 ]
	then echo "error: wrong drive letter passed as argument"
	exit 1
fi

mount_path=${1,,}
volume_path="/mnt/${mount_path}"

cd ~
sudo umount ${volume_path}
