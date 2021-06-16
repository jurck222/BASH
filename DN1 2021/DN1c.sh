#!/bin/bash 
imenik=$1
koncnica=${2}
datoteka="${imenik}_inventura.txt"
find "$imenik" -name "*.${koncnica}" > datoteka
sort datoteka > $datoteka


