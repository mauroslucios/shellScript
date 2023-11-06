#!/usr/bin/env bash
echo "variaveis reservadas"
echo "Parâmetro 1: $1"
echo "Parâmetro 2: $2"
echo "Todos os parâmetros: $*"
echo "Quantos parâmetros foram enviados? $#"
echo "Saida do último comando: $?"
echo "PID: $$"
echo $0