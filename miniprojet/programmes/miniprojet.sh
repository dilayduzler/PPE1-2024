#!/usr/bin/env bash

############# argument validation
if [ "$1" == "" ]; then
    echo "Veulliez fournir un fichier en argument"
    exit 1
fi

############# variables
nb=1
while read -r line; do	
   	code=$(curl -o /dev/null -s -w "%{http_code}" "$line")
	encoding=$(curl -s -I "$line" | egrep -i "Content-Type" | awk -F'=' '{print $2}')    
	nb_mots=$(curl -s "$line" | wc -w)

############# encoding 
if [ -z "$encoding" ]; then
        encoding="Non spécifié"
fi

############# echo et URL code
if [ "$code" != "200" ]; then
	echo -e "${nb}\t${line}\t$code - URL non valide\t${encoding}\t${nb_mots}"
else
	echo -e "${nb}\t${line}\t${code}\t${encoding}\t${nb_mots}"
fi

	nb=$((nb + 1))  
done < "$1"
