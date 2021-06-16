#!/bin/bash 
ari=("$@")
outarr=()
for i in "${ari[@]}"
do
    if [[ -d "$i" ]]
    then
        outarr+=("0")
    else
        if test $(find "$i" 2>/dev/null) ;
        then
        outarr+=("1")
        else
        outarr+=("0")

        fi
    fi
done
echo "${outarr[@]}"
