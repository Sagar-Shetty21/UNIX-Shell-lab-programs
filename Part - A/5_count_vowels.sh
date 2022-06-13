

#5. Shell script to count total number of vowels in a given string.


read -p"Enter a string : " str
echo " vowels present in string are :- "
len=$(expr length $str)
count=0
while [ $len -gt 0 ]
do
   ch=$(echo $str | cut -c $len)
   case $ch in
      [aeiouAEIOU] )
         count=$(($count + 1))
         echo $ch
      ;;
   esac
   len=$(( $len - 1 ))
done
echo "Number of vowels are $count."
