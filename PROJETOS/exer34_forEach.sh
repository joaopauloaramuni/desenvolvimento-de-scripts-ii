#!/bin/bash

# Script para verificar qual dos n�meros de uma lista � o maior. 
# Exemplifica��o do uso do FOR EACH

# O for each � amplamente utilizado em praticamente todas as linguagens de programa��o.
# Trata-se de um loop para iterar em uma lista de objetos qualquer, neste caso, trata-se de uma lista de strings.

NUM="10 45 5 100 35 11"
MAIOR=0

# A vari�vel i ir� assumir o valor de cada item/objeto do array
for i in `echo $NUM`
do
   if [ $i -gt $MAIOR ]
     then
      MAIOR=$i
   fi
done

echo "O maior numero eh '$MAIOR'"
# Resposta: 100
