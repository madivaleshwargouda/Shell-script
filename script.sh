#! /bin/bash

echo "WELLCOME TO SHELL SCRIPT"

for i in {1,"dog",2,"elephant",3,"Rhinosceros",4,"cat"}
do
	echo " hi this is values $i "
	if [ $i == "elephant" ];then
		echo "WE HAVE TO LOOP STOP HERE ....."
		break
	fi

done 
	
echo "---------------------------------"

for i in ./snap
do
	echo "Name of the files is: $i"
done


echo "------------------"

a="cow"

if [ $a == "cow" ];then #space to value
	echo " all good"
fi


echo "-------------------"

a="hello there" # string is space 
if [ "$a" == "hello there" ];then  #so it interpreted as two diffrent value, Its using "$a" 
	echo "all good"
fi

echo "======================="


echo "----------------While loop================"

number=1

while [ $number -le 15 ];
do
	echo "number is $number"
	number=$(( number + 4))

done

echo "---------------SLEEP----------------"

for n in {1..5} 
do
	echo "number is: $n"
	sleep 0.5 # terminate a script time
done


echo " ====== CASE ========"

echo "select an  options.."
echo " type 1 to do A"
echo " type 2 to do B"
echo " type 3 to do C"
echo " type 4 to do D"

read choice

case $choice in
	1)
		echo " your choose A";;
	2)
		echo "your choose B";;
	3)
		echo "your choose C";;
	4)
		echo "your chose D";;
	5)
		echo " None of the above";;
esac

##example
echo " Type a creater"
read choose

case $choose in
	[0-9])
		echo "you type a number";;
	[10-20] | [50-80])
		echo "you type a between 10-20 and 50-80";;

	[a-z])
		echo "you typed a lower case letter";;
	[A-Z])
		echo "you type a upper case letter";;
	*)
		echo "None of the above"
esac
	
echo "========================divible=================="

divible(){

        local num=$1
        echo "your worte $num"

        reminder=$(( $num%2 ))
        echo " the reminder is $reminder"

	if [ $reminder -eq 0 ]; then
		echo " the number $num is divisble by 2"
	fi

}

divible 9
~

echo "------------------reminder----------------"

divible(){
	local num=$1
	echo"the wote $num"

	if [ $(( $num%2 )) -eq 0 ];then
		echo" the number $num divisble by 2"
	fi
        if [ $(( $num%3 )) -eq 0 ];then
                echo" the number $num divisble by 3"
        fi
        if [ $(( $num%5 )) -eq 0 ];then
                echo" the number $num divisble by 5"
        fi

}

divible 3



echo "----------------------======================"

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

divible 30




0
