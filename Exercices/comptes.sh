#!/bin/bash

if [ "$1" != "Location" ]; then
  echo "Utilisation : $0 Location"
  exit 1
fi


nb_2016=$(grep -c "Location" ann/2016*.ann | wc -l)
echo "2016: $nb_2016"

nb_2017=$(grep -c "Location" ann/2017*.ann | wc -l)
echo "2017: $nb_2017"

nb_2018=$(grep -c "Location" ann/2018*.ann | wc -l)
echo "2018: $nb_2018"
