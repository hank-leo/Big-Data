#!/bin/bash
oldIFS=$IFS
IFS=$'\n'
flg=0
for i in ` du -a $1 | sort -nr`;do
	fileName=`echo $i | awk '{print $2}'`
	if [ -f $fileName ];then
		echo $fileName
		flg=1
		break
	fi

done

IFS=$oldIFS

if [ $flg -eq 0 ];then
	echo "not find"  &&  exit 2
else
	exit 0
fi







