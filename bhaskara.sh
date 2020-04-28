#!/bin/bash

clear

vetor1=("A" "B" "C")
vetor2=(a b c)

for(( x=0; x<3; x++ )); do
	read -p "Enter the value ${vetor1[$x]}: " ${vetor2[$x]}
done

delta="($b*$b)-4*$a*$c"

if(( $delta >= 0 )); then
	x1="($b*-1 + sqrt($delta)) / (2*$a)" 
	x2="($b*-1 - sqrt($delta)) / (2*$a)" 
	
	clear

	echo "========RESULTS========="
	printf "The value of x1 is: "
	echo $x1 | bc
	
	printf "The value of x2 is: "
	echo $x2 | bc
	echo "========================"
else
	echo 'The delta is negative'
fi
1
