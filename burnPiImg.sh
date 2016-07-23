# $1 argument = location of the image
# use gparted to have 1 partition ext4
sudo dd bs=1M if=$1 of=/dev/mmcblk0
