#! /bin/bash

# User Input
echo "Read two numbers :"
read a
read b

echo "Enter the operand :"
echo "+. Addition"
echo "-. Subtraction"
echo "*. Multiplication"
echo "/. Division"
read ch

case $ch in
	+ ) echo "$a + $b" | bc;;
	- ) echo "$a - $b" | bc;;
	* ) echo "$a * $b" | bc;;
	/ ) echo "scale=2;$a / $b" | bc;;
esac