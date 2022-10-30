
# To find the sum of N numbers.


clear
read -p"How many numbers do you want to enter? - " n

i=1
sum=0

while [ $i -le $n ]
do
read -p"Enter Number-$i : " num
sum=`expr $sum + $num`
i=`expr $i + 1`
done
echo "Sum of $n numbers is $sum"


