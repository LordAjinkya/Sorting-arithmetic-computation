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


echo "Results in Descending Order "

n=${#result[@]}

for (( i=1;i<=n-1;i++ ))
do
	for (( j=i;j<=n-i;j++ ))
	do
	if [[ ${arr[$((j+1))]%%.*} -gt ${arr[j]%%.*} ]]
	then
		temp=${arr[j+1]}
		arr[$((j+1))]=${arr[j]}
		arr[j]=$temp
	fi
	done
done

for ((i=1;i<=n;i++))
do
	echo -n "${arr[$i]} "
done


echo "ascending order"
n=${#result[@]}
for (( i=1;i<=n-1;i++ ))
do
        for (( j=1;j<=n-i;j++ ))
        do
        if [[ ${arr[j+1]%%.*} -lt ${arr[j]%%.*} ]]
        then
                temp=${arr[j+1]}
                arr[$((j+1))]=${arr[j]}
                arr[j]=$temp
        fi
        done
done

for ((i=1;i<=n;i++))
do
        echo -n "${arr[$i]} "
done
