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
#   $ ./chaves_flags_1.0.sh -h
#   Neste exemplo a saída do script mostrará o menu de opções
#   Não passando o parâmetro -h a saída será cat /etc/passwd | cut -d : -f 1
#   $ ./chaves_flags_1.1.sh -v
#   Neste exemplo a saída do script mostrará a versão do script
#   Não passando o parâmetro -v a saída será cat /etc/passwd | cut -d : -f 1
#   $ ./chaves_flags_1.2.sh -s
#   Neste exemplo a saída do script mostrará a saída ordenada
#   Não passando o parâmetro -v a saída será cat /etc/passwd | cut -d : -f 1
# --------------------------------------------------------------------------#
# Histórico:
#
#   v1.0 01/11/2023, Autor da mudança: Mauro Lúcio Pereira da Silva
#   v1.1 02/11/2023, Autor da mudança: Mauro Lúcio Pereira da Silva
#   v1.2 03/11/2023, Autor da mudança: Mauro Lúcio Pereira da Silva
#
# --------------------------------------------------------------------------#
USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
    $(basename $0) - [OPÇÕES]
        -h - Menu de ajuda
        -v - Versão
        -s - Ordenar s saída
"
VERSAO="v1.1"
CHAVE_ORDENA=0
# -----------------------------EXECUÇÂO-------------------------------------#

case "$1" in
    -h) echo "$MENSAGEM_USO" && exit 0   ;;
    -v) echo "Versão: $VERSAO" && exit 0 ;;
    -s) CHAVE_ORDENA=1                   ;;
esac

[ $CHAVE_ORDENA -eq 1 ] && echo "$USUARIOS" | sort
