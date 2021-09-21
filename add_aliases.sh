#!/bin/bash
# add aliases to .bashrc file

echo '' >> ~/.bashrc
echo 'source ~/shell-scripts/.aliasesrc' >> ~/.bashrc
source ~/.bashrc

echo "you can now use aliases commands"
echo "exemple: 'mnt f' = mount the f volume"
echo "exemple: 'umnt f' = unmount the f volume"
