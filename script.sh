#!/bin/bash

again=yes
while [[ again=yes ]]
do
	read num1 num2
	if [[ $num1 -eq "" || $num2 -eq "" ]]
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
			let "arg1 = $1 - $2"
			gcd $arg1 $2
		else
			let "arg2 = $2 - $1"
			gcd $1 $arg2
		fi
	}
	gcd $num1 $num2
done

