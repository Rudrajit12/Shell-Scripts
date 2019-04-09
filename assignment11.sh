#! /bin/bash

echo "Enter two files :"
read file1
read file2

if [[ -e "$file1" || -e "$file2" ]]; 
then
	echo "Finding patterns that starts with A-L and ends with S"
	sort $file1 $file2 | grep -i "^[A-L].*S$"|uniq >>fi
	cat fi
	echo "Finding patterns that starts with A-L or ends with S"
	sort $file1 $file2 | grep -i "^[A-L]\|S$"|uniq >>si
	cat si
else
	echo "Either or both the files does not exist"
fi