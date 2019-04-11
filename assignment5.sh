#! /bin/bash

neg=0
pos=0
zero=0

if [[ "$#" -ne "10" ]]; 
then
	echo "Invalid Input"
	exit
fi

printf "%s\n" $@|sort -n
while [[ "$#" -gt "0" ]]; 
do
	if [[ "$1" -gt "0" ]]; 
	then
		let pos=`expr $pos + 1`
	elif [[ "$1" -lt "0" ]]; 
		then
			let neg=`expr $neg + 1`
		else
			let zero=`expr $zero + 1`
	fi
	shift
done
echo "Total number of positive integers are $pos"
echo "Total number of negative integers are $neg"
echo "Total number of zeros are $zero"

echo "Number of directories in current directory is :"
ls -lr | grep -c "^d"
echo "Names of directories present in current directory are :"
ls -lr | grep "^d"|awk '{printf " "$NF}'
echo 
echo "Number of files in current directory is :"
ls -lr | grep -vc "^d"
echo "Names of files in current directory are :"
ls -lr | grep -v "^d"|awk '{printf " "$NF}'
echo
