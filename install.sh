#! /bin/bash
if [ "$(id -u)" -ne "0" ]; then
    echo "This script must be run as root. Exiting."
    exit 1
fi
echo "[*]   Strating..... "

apt update
apt install snort tcpdump
echo "alert tcp any any -> any 22 (msg:"Incoming SSH traffic detected"; sid:1000002; rev:1;)" >> sudo /etc/snort/rules/local.rules
echo "alert icmp any any -> any any (msg:"Large incoming ICMP packet detected - potential DoS"; dsize:>1024; sid:1000003; rev:1;)">>sudo  /etc/snort/rules/local.rules
chmod +x tcpsnort
mv tcpsnort /bin/tcpsnort
read -p "Any Problem (y/n)" option 
if [ $option -eq 'y' ];then
rm install.sh

echo "End instalation"
else 
echo "Try Again"
fi
exit 1
