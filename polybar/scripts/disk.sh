#! /bin/bash

echo $(df -h --si | grep /dev/sda6 | awk '{print substr($3, 1, length($3)-1)" - "$2}')
