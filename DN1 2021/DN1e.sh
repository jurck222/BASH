#!/bin/bash 
reserved="DA"
if test "$1" -ge 100; then
    reserved="NE"
fi
if test id "$1" &>/dev/null; then
    ime=$(id -un "$1")
    hdir=$(grep "$ime" /etc/passwd | cut -d ":" -f6 | head -1)
    lupina=$(grep "$ime" /etc/passwd | cut -d ":" -f7)
    lupina2=$(cut -d "/" -f2 "$lupina")
    echo "uid: $1"
    echo "uporabnik: $ime"
    echo "imenik: $hdir"
    echo "lupina: $lupina2"
    echo "rezerviran: $reserved"
elif test "$1" -eq 0; then
    ime=$(id -un "$1")
    hdir=$(grep "$ime" /etc/passwd | cut -d ":" -f6 | head -1)
    echo "uid: $1"
    echo "uporabnik: $ime"
    echo "imenik: $hdir"
    echo "lupina: bash"
    echo "rezerviran: $reserved"
else
    echo 'prosto!'
    echo "rezerviran: $reserved"
fi
