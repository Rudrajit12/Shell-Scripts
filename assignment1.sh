#! /bin/bash

if [[ "$#" -ne 2 ]]; 
then
	echo "1 Invalid Input"
	exit 1
fi

if [[ -e "$1" && -e "$2" ]]; 
then
	if [[ -f "$1" && -f "$2" ]]; 
	then
		if [[ -r "$1" && -r "$2" ]] && [[ -w "$1" && -w "$2" ]]; 
		then
			touch tmp.txt
			cp "$1" tmp.txt
			cp "$2" "$1"
			cp tmp.txt "$2"
			rm tmp.txt
			echo "0 Successful"
			exit 0
		else
			echo "4 Both the files aren't readable and writeable"
			exit 4
		fi
	else
		echo "3 Files are not regular"
		exit 3
	fi
else
	echo "2 Files do not exist"
	exit 2
fi