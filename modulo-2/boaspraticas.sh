#!/usr/bin/env bash
#--Iniciando as variáveis: "começa" com 0(zero) e "até" com 100(cem)---------------#
comeca=0
ate=100;

#[ $comeca -ge $ate ] && exit 1

#-----contando de 0 até 100---------------------------------------------------------#
for i in $(seq $comeca $ate); do
    for j in $(seq $i $ate); do
#-----Imprimindo * x a quantidade de i----------------------------------------------#
        [ $comeca -ge $ate ] && exit 1
        printf "*";
    done;
#-----quebra de linha com \n--------------------------------------------------------#
    printf "\n";
done
#-----------------------------------------------------------------------------------#