#!/bin/bash

if [ "$1" != "Location" ]; then
  echo "Utilisation : $0 Location"
  exit 1
fi


for annee in 2016 2017 2018;
do
	nb=$(grep -c "Location" ann/"$annee"*.ann | wc -l)
	echo "$annee: $nb"
done

