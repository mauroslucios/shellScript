#!/usr/bin/env bash

echo "Mostrando divisíveis por 2"
cont=1
while [[ $cont -le 10 ]]
do
    if [ $((cont % 2)) -eq 0 ]; then
        echo "$cont é divisivel por 2"
    fi
    cont=$((cont+1))
done

