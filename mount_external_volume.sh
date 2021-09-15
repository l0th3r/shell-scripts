#!/bin/sh
# in a window linux subsystem, mount a volume in the mnt folder.
# most use with a usb key or external dive
#
# In argument 1, provide the drive's letter
# exemple: "source mount_external_volume.sh f" (will mount the F: volume)

if [ ${#1} -ge 2 ] || [ -z $1 ]
	then echo "error: wrong drive letter passed as argument"
	exit 1
fi

mount_path=${1,,}
drive_letter=${mount_path^^}
volume_path="/mnt/${mount_path}"

sudo mkdir ${volume_path}
sudo mount -t drvfs ${drive_letter}: ${volume_path}
cd /mnt/${mount_path}/
