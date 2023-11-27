#!/bin/bash

logfile="./nginx-logs"
sorted_ips="./ip_sorted.txt"
grep '30/Jul/2022' $logfile | awk '{print $1}' | sort | uniq -c | sort -nr > $sorted_ips

cat $sorted_ips
