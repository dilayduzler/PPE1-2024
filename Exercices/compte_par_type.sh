#!/bin/bash

# $1 = annee, $2 = entite

compte=$(grep -c "$2" ann/"$1"*.ann | wc -l)

echo $compte

