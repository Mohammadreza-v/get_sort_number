#!/bin/bash
rm -f temp.txt
while true
do
	echo -n "Please Enter a Number: "
	read num
	var=$[$num*1]
	echo $var >> temp.txt
	cat temp.txt | sort -nu > file.txt
	cat file.txt
	if [ $num = exit ]
	then
		rm -f temp.txt
		break
	fi
done
echo -n "do you want to save a file (y , n) ?! "
read line
if [ $line = y ]
then
	echo -n "Please Enter Path : "
	read path
	mv ./file.txt `echo $path`
	rm -f file.txt
elif [ $line = n ]
then
	rm -f file.txt
fi	
