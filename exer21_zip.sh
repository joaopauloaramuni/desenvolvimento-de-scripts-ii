#!/bin/bash
#Script simples para fazer backup de um diret�rio fornecido por par�metro. � gerado um arquivo compactado .zip.

origem=$1

#Verificar se foi fornecido par�metro
if [ $# -lt 1 ]; then
    echo
    echo "ERRO: Faltando par�metro"
    echo
    exit
fi
#Verificar se o diret�rio de origem existe
if [ ! -d $origem ]; then
    echo
    echo "ERRO: Diret�rio $origem n�o existe"
    echo
    exit
fi

clear
data=`date +%H%M%S`
echo
echo "Compactando $origem ..."
echo
# -r = recursivo, sub-pastas, pastas, etc.
zip -r "Backup_$data.zip" "$origem"
# E para tar.gz professor?
# tar -czf Backup_$data.tar.gz /diretorio/
echo
echo "Backup criado com sucesso em `pwd`"
echo
exit
