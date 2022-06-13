

#4. Shell script to find maximum and minimum of a given set.


read -p"enter size of the set : " n
#taking input from user
for((i=0;i<n;i++))
do
read -p" enter $((i+1)) number : " nos[$i]
done
#printing the entered number
echo "numbers entered are as follows :- "
for((i=0;i<n;i++))
do
echo ${nos[$i]}
done
#main loop
small=${nos[0]}
greatest=${nos[0]}
for((i=0;i<n;i++))
do
#logic for smallest number
if [ ${nos[$i]} -lt $small ]; then
small=${nos[$i]}
#logic for greatest number
elif [ ${nos[$i]} -gt $greatest ]; then
greatest=${nos[$i]}
fi
done
#printing smallest and greatest number
echo "Minimum is $small"
echo "Maximum is $greatest"
