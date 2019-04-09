#! /bin/bash

if [[ "$#" -ne "2" ]]; 
then
	echo "Invalid Input"
fi

if [[ "$1" -le "0" ]]; 
then
	echo "Integer should not be less than or equal to zero"
elif [[ "$2" -le "0" ]]; 
	then
		echo "Integer should not be less than or equal to zero"
else
	if [[ "$1" -gt "$2" ]]; 
	then
		echo $(( $1 / $2 ))
	else
		echo $(( $2 / $1 ))
	fi

fi