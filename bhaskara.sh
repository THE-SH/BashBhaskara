#!/bin/bash

clear

vetor1=("A" "B" "C")
vetor2=(a b c)

for(( x=0; x<3; x++ )); do
	read -p "Insira o valor de ${vetor1[$x]}: " ${vetor2[$x]}
done

delta="($b*$b)-4*$a*$c"

if(( $delta >= 0 )); then
	x1="($b*-1 + sqrt($delta)) / (2*$a)" 
	x2="($b*-1 - sqrt($delta)) / (2*$a)" 
	
	clear

	echo "=====RESULTADOS====="
	printf "O valor de x1 é: "
	echo $x1 | bc
	
	printf "O valor de x2 é: "
	echo $x2 | bc
	echo "====================" 
else
	echo 'O delta é negativo'
fi
