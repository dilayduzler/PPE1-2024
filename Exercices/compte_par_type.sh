#!/bin/bash

# $1 = annee, $2 = entite

if [ "$1" == "" ] || [ "$2" == "" ]; then
  echo "Utilisation : $0 <année> <type d'entité>"
  exit 1
fi

compte=$(grep -c "$2" ann/"$1"*.ann | wc -l)

echo $compte

