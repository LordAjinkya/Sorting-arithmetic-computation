echo "Welcome to sorting Arithmetic computation program"
read -p "Enter first input " a
read -p "Enter second input " b
read -p "Enter third input " c
echo 'compute1=%0.0f' "$(( a +b * c ))"
echo '\ncompute2=%0.2f' "$(( a * b + c ))"
compute3="scale=2;$c + $a / $b"
echo compute3="$compute3"
compute4=`echo "scale=0;$a % $b + $c"
echo compute4="$compute4"
