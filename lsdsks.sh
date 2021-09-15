#!/bin/bash
# List all local partitions
sudo lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL
