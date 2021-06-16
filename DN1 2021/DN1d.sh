#!/bin/bash  
ime="$1"

vsota=0
while read vrstica
do
if $(cp "$vrstica" . 2>/dev/null)
then
velikost=$(wc -c "$vrstica" | cut -d " " -f1)
vsota=$((vsota+velikost))
else
echo "Napaka v inventarju!"
exit 10
fi
done < "$ime"
echo "$vsota B"

