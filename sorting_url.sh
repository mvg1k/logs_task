#!/bin/bash
logfile="./nginx-logs"
url="./url_sorted.txt"
cat nginx-logs | grep -o -E 'https://([^"#]+)' | sort | uniq -c | sort -nr > $url


cat $url
