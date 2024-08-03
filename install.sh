#! /bin/bash
echo "[*]   Strating..... "

apt update
apt install snort tcpdump
echo "alert tcp any any -> any 22 (msg:"Incoming SSH traffic detected"; sid:1000002; rev:1;)" >> /etc/snort/rules/local.rules
echo "alert icmp any any -> any any (msg:"Large incoming ICMP packet detected - potential DoS"; dsize:>1024; sid:1000003; rev:1;)">> /etc/snort/rules/local.rules
mv tcpsnort /bin/tcpsnort
cp /etc/snort/rules/local.rules ../
rm /etc/snort/rules/*
mv /etc/snort/local.rules /etc/snort/rules


echo "End instalation"
