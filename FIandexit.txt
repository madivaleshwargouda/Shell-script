#! /bin/bash

number1=100
number2=50

echo " SUM $((number1 + number2)) "
echo " MUL $((number1 * number2)) "
echo " DIVISION $((number1 / number2 )) "

echo " ratio $((100%2))"
echo "power $((5**3)) "
echo "power $((5*2)) "

echo ".........................."

echo "varible value $number1 "


echo " $((number1++)) "
echo " variable value $number1 "

echo "$((number2--)) "
echo " VARIABLE value $number2 "

echo " ========================= "



number3=25
echo "value: $number3"

number3=$((number3 + 5))
echo "value: $number3 "

echo "ADD: $(( number3+=10 )) "
echo "$number3"

echo "sub: $(( number3-=10 )) "
echo "$number3 "





