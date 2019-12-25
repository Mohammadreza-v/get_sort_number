#!/bin/bash
j=0
x=0
while true
do
	echo -n "new Number: "
	read var
	var=`echo $var | sed s/'+'//`
	var=`echo "$var*1" | bc`
	for num in $var
	do
		array[$x]=$num
		for((i=0;i<$x;i++))
		do
			if ((${array[$x]} < ${array[$i]}))
			then
			tmp=${array[$x]}
			array[$x]=${array[$i]}
			array[$i]=$tmp
			fi
		done
		x=$[$x + 1]
		for number in ${array[*]}
		do
			echo "array[$j]: " $number
			j=$[$j + 1]
		done
		j=0
		done
	done
