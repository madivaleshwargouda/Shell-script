#! /bin/bash

divible(){
        local num=$1
        echo"number $num"

for i in {1,3,5}
do
	if [ $(( $num%$i )) -eq 0 ];then
		echo" the number $num divisble by $i "
	fi
done

}

divible 10

echo "============================================="

echo "hello"

for item in ./* # all file showing
do
	number=$(( number + 1 ))
	echo "$number"
done

echo "the number if item is: $number"


echo "------------------------------------------------"

for item in ./*.txt  # txt file showing
do
        number=$(( number + 1 ))
        echo "$number"
done

echo "the number if item is: $number"





echo "-----------------file crete-------------"

for i in {1..4}
do
	touch " ${i}file.txt "
done

for i in {1..4}
do
	touch " myfile ${i}.jpg "
done

echo "create file"
sleep 0.5
ls -l


echo "=============================================="
choice=""
while [ "$choice" != "t" -a "$choice" != "j" ]
do
	echo " to remain.jpg, to name.txt, gdgl.j, hhgyd.txt: "
	read choice
	echo "your type $choice"
done

read -p " write prefix to add to these file : " pref 
echo " the prefix is $pref "

if [ "$choice" == "t" ]; then
	for element in *.txt
	do
	       mv ${element} ${pref}${element}
	done
else
	for element in *.jpg
        do
               mv ${element} ${pref}${element}
        done
fi













