#! /bin/bash 
vars=( $(ps -ef|awk '{print $2}') )
for i in "${vars[@]:1}";
do 
a=( $(ps -p "$i" -o args) )
echo "$i ${a[@]:3}"
done
