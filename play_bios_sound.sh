#!/bin/sh
# Just for fun, play the motherboard bip (when available)
sudo modprobe pcspkr
sudo bash -c "echo -e '\a' > /dev/console"
