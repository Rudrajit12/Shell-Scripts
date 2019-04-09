#! /bin/bash

input=$1

if [[ $input -gt 3 ]]; 
then
	let result=(`expr $input \* 2` )
	echo "result = $result"
elif [[ $input -lt 3 ]]; 
	then
		let result=(`expr $input \* 3` )
		echo "result = $result"
	elif [[ $input -eq 3 ]]; 
		then
			echo "Error, Enter a different number"
fi