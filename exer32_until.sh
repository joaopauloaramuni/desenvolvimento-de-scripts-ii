#!/bin/bash

#Enquanto a condi��o for VERDADEIRA, o while continuar� executando o loop at� que a condi��o seja FALSA.
#Em outras palavras, ENQUANTO (while) for verdadeiro, execute.
variavel=0
while [ $variavel -lt 10 ]
do
	echo "$variavel eh menor do que 10."
	variavel=`expr $variavel + 1`
done

#Enquanto a condi��o for FALSA, o until continuar� executando o loop at� que a condi��o seja VERDADEIRA.
#Em outras palavras, AT� (until) que seja verdadeiro, execute.
variavel2=20
until [ $variavel2 -lt 10 ]
do
	echo "$variavel2 nao eh menor do que 10."
	variavel2=`expr $variavel2 - 1`
done

#RESULTADOS:

# WHILE ir� imprimir:					# UNTIL ir� imprimir:
# 0 � menor do que 10.					# 20 n�o � menor do que 10.
# 1 � menor do que 10.					# 19 n�o � menor do que 10.
# 2 � menor do que 10.					# 18 n�o � menor do que 10.
# 3 � menor do que 10.					# 17 n�o � menor do que 10.
# 4 � menor do que 10.					# 16 n�o � menor do que 10.
# 5 � menor do que 10.					# 15 n�o � menor do que 10.
# 6 � menor do que 10.					# 14 n�o � menor do que 10.
# 7 � menor do que 10.					# 13 n�o � menor do que 10.
# 8 � menor do que 10.					# 12 n�o � menor do que 10.
# 9 � menor do que 10.					# 11 n�o � menor do que 10.	
										# 10 n�o � menor do que 10.
													
# A v�lvula de escape do WHILE foi variavel=10, uma vez que 10 -lt 10 tem como resultado FALSO, e por isso, termina o loop. (10 < 10 = falso)
# A v�lvula de escape do UNTIL foi variavel=9, uma vez que 9 -lt 10 tem como resultado VERDADEIRO, e por isso, termina o loop. (9 < 10 = verdadeiro)
