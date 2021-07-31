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
