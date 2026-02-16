#!/bin/bash

again=yes

while [[ $again = "yes" ]]
do
<<<<<<< HEAD
	read num1 num2
	if [[ $num1 -eq "" || $num2 -eq "" ]]
=======
        mathDo ()
	{
		res=$(($1 $2 $3))
		echo $res
	}

	read in1 in2 in3
	if [[ $in1 = exit && -z $in2 && -z $in3 ]]
>>>>>>> d5a0979 ( newest)
	then
		echo "bye"
		break
	fi
<<<<<<< HEAD
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
=======
	if [[ $in2 != + && $in2 != "-" && $in2 != "*" && $in2 != "/" && $in2 != "%" && $in2 != "**" ]]
	then
		echo "error"
		break
	fi
	mathDo $in1 "$in2" $in3
>>>>>>> d5a0979 ( newest)

done
