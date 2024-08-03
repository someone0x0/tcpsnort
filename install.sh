#! /bin/bash
echo "[*]   Strating..... "

 sudo apt update
sudo apt install snort tcpdump
sudo echo "alert tcp any any -> any 22 (msg:"Incoming SSH traffic detected"; sid:1000002; rev:1;)" >> sudo /etc/snort/rules/local.rules
sudo echo "alert icmp any any -> any any (msg:"Large incoming ICMP packet detected - potential DoS"; dsize:>1024; sid:1000003; rev:1;)">>sudo  /etc/snort/rules/local.rules


echo "End instalation"