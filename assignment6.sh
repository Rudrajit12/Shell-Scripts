#! /bin/bash

item_code=`tail -1 item.dat | cut -d "|" -f1`
echo -e "\nEnter the quantity of sold item : \c"
read qty

if [[ $qty -lt 1 ]]; 
then
	echo -e "\nQuantity should be greater than 0"
	echo -e "Enter the quantity again : \c"
	read qty
fi

echo -e "\nEnter the rate : \c"
read rate
if [ $rate -le 100 ] || [ $rate -gt 1000 ]; 
then
	echo -e "\nRate must be between 100 and 1000"
	echo -e "Enter the rate again : \c"
	read rate
fi
(( item_code=item_code + 1 ))
echo "$item_code | $qty | $rate" >> item.dat