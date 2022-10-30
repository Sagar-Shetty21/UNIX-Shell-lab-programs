


#13.  Shell script to find gcd and lcm of given two numbers.


clear
echo "Enter two intergers"
read -p"Number 1 : " m
read -p"Number 2 : " n
clear

echo "Given numbers are:-"
echo "m = $m and n = $n"
echo "====================="
echo "-----GCD and LCM-----"
echo "====================="
temp=`expr $m \* $n`

while [ $m != $n ]
do
if [ $m -gt $n ] 
    then
    m=`expr $m - $n` 
    else
    n=`expr $n - $m` 
fi
done
echo GCD = $n
lcm=`expr $temp / $n`
echo LCM = $lcm 
