


#15.  Shell script to reverse a given string.


clear
read -p"enter the string : " str
len=`expr $str | wc -c`
len=`expr $len - 1`
while [ $len -gt 0 ]
do
  ch=`echo $str | cut -c $len`
  echo -n  $ch
  len=`expr $len - 1`
done