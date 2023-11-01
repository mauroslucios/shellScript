#!/usr/bin/env bash

while [[ -z "$resposta" ]]; do
  echo "Digite um número"
  read resposta
done

VALOR=$(($resposta % 2))

if [[ $VALOR -eq 0 ]]; then
  echo "Número é par"
else
  echo "Número é impar"
fi