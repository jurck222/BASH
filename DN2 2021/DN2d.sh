#! /bin/bash 
top -b -n 2  | head -n 10 | tail -n 3 | awk '{print $12, $9, $10}'
