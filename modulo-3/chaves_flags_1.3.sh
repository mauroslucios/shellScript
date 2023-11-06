#!/usr/bin/env bash
#
# listaUsuarios.sh - Extrai usuários do /etc/passwd
#
# Site:     github.com/mauroslucios
# Autor:    Mauro Lúcio Pereira da Silva
# Manutenção: Mauro Lúcio Pereira da Silva
#
# --------------------------------------------------------------------------#
# Extrairá usuários do /etc/passwd, havendo a possibilidade de colocar em
# maíúscula e em ordem alfabética
#
# Exemplos:
#   $ ./listaUsuarios.sh -h
#   Neste exemplo a saída do script mostrará o menu de opções
#   $ ./listaUsuarios.sh -v
#   Neste exemplo a saída do script mostrará a versão
#   $ ./listaUsuarios.sh -s
#   Neste exemplo a saída do script ficará em ordem alfabética
#   $ ./listaUsuarios.sh -m
#   Neste exemplo a saída do script ficará em MAIÚSCULO
# --------------------------------------------------------------------------#
# Histórico:
#
#   v1.1 01/11/2023, Autor da mudança: Mauro Lúcio Pereira da Silva
#   v1.2 01/11/2023, Autor da mudança: Mauro Lúcio Pereira da Silva
#   v1.3 02/11/2023, Autor da mudança: Mauro Lúcio Pereira da Silva
#   v1.4 03/11/2023, Autor da mudança: Mauro Lúcio Pereira da Silva
#
# --------------------------------------------------------------------------#
USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
    $(basename $0) - [OPÇÕES]
        -h - Menu de ajuda
        -v - Versão
        -s - Ordenar s saída
        -m - Coloca em maiúsculo
"
VERSAO="v1.3"
CHAVE_ORDENA=0
# -----------------------------EXECUÇÂO-------------------------------------#

case "$1" in
    -h) echo "$MENSAGEM_USO" && exit 0   ;;
    -v) echo "Versão: $VERSAO" && exit 0 ;;
    -s) CHAVE_ORDENA=1                   ;;
    -m) CHAVE_MAISCULA=1                 ;;
     *) echo "$USUARIOS"                 ;;
esac

[ $CHAVE_ORDENA -eq 1 ] && echo "$USUARIOS" | sort
[ $CHAVE_MAISCULA -eq 1 ] && echo "$USUARIOS" | tr [a-z] [A-Z]