#! /bin/bash

echo -e "Enter the two filenames : \c"
read file1
read file2

if [[ -f $file1 && -f $file2 ]]; 
then
	echo "Append the contents of first file to second file"
	cat $file1 >> $file2
	echo "Append successful"
else
	echo "Files does not exist."
fi