#! /bin/bash

echo -e "Enter the string : \c"
read str
len=`echo $str | wc -c`
len=`expr $len - 1`
rev=""
while [[ $len -gt 0 ]]; 
do
	rev1=`echo $str | cut -c $len`
	rev=$rev$rev1
	len=`expr $len - 1`
done
echo "Original string is : $str"
echo "Reversed string is : $rev"
if [[ $rev == $str ]]; 
then
	echo "String is palindrome"
else
	echo "String is not palindrome"
fi