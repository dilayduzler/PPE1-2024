#!/bin/bash

# $1 = entite (varlık türü)

compte16=$(grep -c "$1" ann/"2016"*.ann | wc -l)
echo "2016: $compte16"

compte17=$(grep -c "$1" ann/"2017"*.ann | wc -l)
echo "2017: $compte17"

compte18=$(grep -c "$1" ann/"2018"*.ann | wc -l)
echo "2018: $compte18"

