#!/bin/sh

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
