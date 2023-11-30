#! /bin/bash

echo Disply directories

for item in *
do 
	if [ -d $item ];then
		echo "$item"
	fi
done

echo Disply files

for item in *
do 
	if [ -f $item ];then
		echo "$item"
	fi
done

for mahesh in [1..2]
do 
	if [ $mahesh ];then
		echo "creating file $mahesh"
	fi
done

