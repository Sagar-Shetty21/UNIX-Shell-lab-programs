
# To count number of characters in a given string.

clear
read -p "Enter a string : " str
i=`expr length $str`
echo "Length of the string \"$str\" is $i"
