#! /bin/bash
echo "[*]   Strating..... "

apt update
apt install snort tcpdump

mv tcpsnort /bin/tcpsnort

rm /etc/snort/rules/*

echo "alert tcp any any -> any 22 (msg:"Incoming SSH traffic detected"; sid:1000002; rev:1;)" >> /etc/snort/rules/local.rules
echo "alert icmp any any -> any any (msg:"Large incoming ICMP packet detected - potential DoS"; dsize:>1024; sid:1000003; rev:1;)">> /etc/snort/rules/local.rules


echo "End instalation"
