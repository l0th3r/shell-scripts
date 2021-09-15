#!/bin/sh

if [ ${#1} -ge 2 ] || [ -z $1 ]
	then echo "error: wrong drive letter passed as argument"
	exit 1
fi

mount_path=${1,,}
volume_path="/mnt/${mount_path}"

cd ~
sudo umount ${volume_path}
