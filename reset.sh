#!/bin/bash
lxc start "$1"
lxc exec "$1" -- sudo apt-get install dos2unix curl -y
lxc exec "$1" -- curl -L https://raw.githubusercontent.com/spiritLHLS/lxc/main/ssh.sh -o ssh.sh
lxc exec "$1" -- dos2unix ssh.sh
lxc exec "$1" -- chmod +x ssh.sh
echo "1"
echo "2"
echo "3"
echo "4"
echo "5"
echo "6"
lxc exec "$1" -- sudo ./ssh.sh "$2"
echo "$2"
rm -rf "$0"