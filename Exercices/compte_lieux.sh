#!/bin/bash

# $1 = annee, $2 = mois, $3 = nb_places

annee=${1:-*}
mois=${2:-*}
nb_places=${3:-10}

egrep -i "Syrie|Villeneuve-d'Ascq|Allemagne|Nice|Italie|Saint-Denis|Toulouse|Marseille|Montpellier|Ukraine|États-Unis|Paris|Turquie|Russie|France" ann/${annee}_${mois}*.ann | \
cut -f 3| \
sort | \
uniq -c | \
sort -nr | \
head -n $nb_places

