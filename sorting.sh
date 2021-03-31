#!/bin/bash
echo "Welcome to sorting Arithmetic computation program"
declare -A result
read -p "Enter first input " a
read -p "Enter second input " b
read -p "Enter third input " c
echo 'compute1=%0.0f' "$(( a +b * c ))"
echo '\ncompute2=%0.2f' "$(( a * b + c ))"
compute3="scale=2;$c + $a / $b"
echo compute3="$compute3"
compute4=`echo "scale=0;$a % $b + $c"
echo compute4="$compute4"

echo ${result[@]}
compute1=echo "$a + $b * $c"
compute2=echo "$a * $b + $c"
result[1]="$compute1"
result[2]="$compute2"
result[3]="$compute3"
result[4]="$compute4"


echo "Dictionary :  ${result[@]}"
echo "Array :"
for i in ${!result[@]}
do
	arr[i]=${result[$i]}
	echo -n "${arr[i]} "
done
