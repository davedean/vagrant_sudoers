#!/bin/bash

if [ ! -d /etc/sudoers.d/ ] ; then
  sudo mkdir /etc/sudoers.d/
fi

# TODO: add check for line already
echo "you need to add the following line to /etc/sudoers. You should do it in the vi window that opens, so take a copy of this line:"
echo "#includedir /etc/sudoers.d/"
echo "it will not be shown again."
read

sudo visudo


sudo cp vagrant.sudo /etc/sudoers.d/
