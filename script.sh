#!/bin/bash

again=yes
while [[ again=yes ]]
do
	read num1 num2
	if [[ $num1 -eq "" ]]
	then
		echo bye
		break
	fi
	gcd ()
	{
		if [[ $1 -eq $2 ]]
		then
			echo "GCD is $1"
			return
		fi
		if [[ $1 -gt $2 ]]
		then
			gcd let "$1 - $2" $2
		else
			gcd $1 let "$2 - $1"
		fi
	}
	gcd $num1 $num2
done

