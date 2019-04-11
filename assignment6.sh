#! /bin/bash

item_code=`tail -1 item.dat | cut -d "|" -f1`
echo -e "\nEnter the quantity of sold item : \c"
read qty

if [[ $qty -lt 1 ]]; 
then
	echo -e "\nQuantity should be greater than 0"
	exit
fi

echo -e "\nEnter the rate : \c"
read rate
if [ $rate -le 100 ] || [ $rate -gt 10000 ]; 
then
	echo -e "\nRate must be between 100 and 10000"
	exit
fi
(( item_code=item_code + 1 ))
echo "$item_code | $qty | $rate" >> item.dat
cat item.dat
