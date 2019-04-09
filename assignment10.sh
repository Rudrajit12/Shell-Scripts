#! /bin/bash

echo -e "Enter the name of the text file : \c"
read file

if [[ -f $file ]] 
then
	echo "Finding patterns that starts with A-L and ends with S"
	grep -i "^[A-L].*S$" $file
	echo "Finding patterns that starts with A-L or ends with S"
	grep -i "^[A-L]\|S$" $file
else
	echo "File does not exist"
	exit
fi