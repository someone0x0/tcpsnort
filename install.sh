#! /bin/bash
if [ "$(id -u)" -ne "0" ]; then
    echo "This script must be run as root. Exiting."
    exit 1
fi
    echo "[*]   Strating..... "

apt update
apt install snort tcpdump
chmod +x tcpsnort
mv tcpsnort /bin/tcpsnort
read -p "Any Problem (y/n)" option 
if [ $option -eq 'y' ];then
     rm install.sh
     echo "[*]   End instalation"
else 
     echo "Try Again"
fi
exit 1
