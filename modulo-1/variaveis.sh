#!/usr/bin/env bash
NOME="Mauro Lúcio Pereira da Silva"
echo "$NOME"

num1=100
num2=200

TOTAL=$((num1+num2))

echo "$TOTAL"

SAIDA_CAT="$(cat /etc/passwd | grep mauro)"
echo "$SAIDA_CAT"