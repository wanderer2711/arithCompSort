#! /bin/bash
read -p "Enter num1: " num1
read -p "Enter num2: " num2
read -p "Enter num3: " num3
sum=$(( $num1+$num2*$num3 ))
ops2=$(( $num1*$num2+$num3 ))
ops3=$(( $num3+$num1/$num2 ))
ops4=$(( $num1%$num2+$num3 ))
declare -A computation
computation[add]=$sum
computation[mul]=$ops2
computation[div]=$ops3
computation[mod]=$ops4
declare -a array1
#array1[0]=${computation[add]}
#array1[1]=${computation[ops2]}
#array1[2]=${computation[ops3]}
#array1[3]=${computation[ops4]}

for v in ${computation[@]}
do
	for i in ${array1[@]}
	do
		${!array1[i]}=${computation[v]}
	done
done
echo ${array1[@]}
