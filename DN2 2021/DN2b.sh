#! /bin/bash 
IFS=$'\n'
while :
do
    read -p "Vnesite ime ukaza: " ukaz
    type -a $ukaz >/dev/null 2>&1
    if test $? -ne 0; then
        continue
    fi
    arr=( $(type -a $ukaz) )
    if test ${#arr[@]} -ge 2; then
        a="n"
        for i in "${arr[@]}";
        do
            if test "$i" == "$ukaz is a shell builtin";
            then
            a="y"
            fi
        done
        if test $a == "y"; then
            echo "ObOjE"
        else
            echo "nevgrajen"
        fi
    elif test "${arr[0]}" == "$ukaz is a shell builtin"; 
    then
        echo "VGRAJEN"
    else
        echo "nevgrajen"
    fi
done
