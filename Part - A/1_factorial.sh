


#1. Shell script to find a factorial of a given number.


read -p "Enter a number : " num
fact=1

if [ $num -lt 0 ] 
then
	echo "Enter a positive number."
else
	for((i=2;i<=num;i++))
	{
	  fact=$((fact*i))
	}
	echo "The factorial of $num is $fact."
fi

