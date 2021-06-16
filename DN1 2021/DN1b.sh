#!/bin/bash 
ari=("$@")
a=0
for i in "${ari[@]}"
do
    if test $a -eq 0; 
    then
        a=$((a+1))
    else
        setfacl -Rm u:"$i":rx "$1"
    fi
done
