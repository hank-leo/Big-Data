#!/bin/bash

num=0
oldIFS=$IFS
IFS=$'\n'
for i in `cat file.txt`;do
	echo $i
	((num++))
done
echo "num:$num"
IFS=$oldIFS
echo "--------------"

num=0
lines=`cat file.txt | wc -l `
for ((i=1;i<=lines;i++));do
	line=`head -$i file.txt | tail -1`
	echo $line
	((num++))
done
echo "num:$num"
echo "--------------"
num=0
while read line    ;do
	echo $line
	((num++))
done < file.txt
echo "num:$num"
echo "--------------"
export num=0
cat file.txt | while read line  ;do 
	echo $line
	((num++))
done
echo "num:$num"




