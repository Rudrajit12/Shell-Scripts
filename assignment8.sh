#! /bin/bash

echo -e "Enter the two files :"
read file1
read file2

if [[ ! -r $file1 ]]; 
then
	echo "Error : Read permission not granted"
	exit
fi

if [[ -e $file2 ]]; 
then
	echo "Do you want to overwrite it?"
	echo "Press y or Y to overwrite"
	read ans
	if [ $ans=y ] ||[ $ans=Y ]; 
	then
		cat $file1>$file2
		echo "Overwrite successful"
	else
		echo "Exiting"
		exit
	fi
else
	echo "File does not exist."
fi