#!/bin/bash
logfile="./nginx-logs"
sorted="./ip_sorted.txt"
ip="./ip.txt"
# deleting non ip
awk '{print $1}' $logfile | grep -P '^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$' > $ip
# counting uniq ip adresses
awk '{print $1}' $ip | sort | uniq -c | sort -nr > $sorted
rm ip.txt

# results
cat $sorted

