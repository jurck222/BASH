#! /bin/bash 
myArray=( "$@" )
for i in "${myArray[@]:1}";
do
array2=($(grep -oP "$i"' \K\w+' "$1" ))
vsota=0

    for x in "${array2[@]}";
    do
    if test ${#x} -ge 3; then
        a=${x::-1}
    else
        a=$x
    fi
    vsota=$((vsota+a))
    done
echo "$i $vsota"
done

