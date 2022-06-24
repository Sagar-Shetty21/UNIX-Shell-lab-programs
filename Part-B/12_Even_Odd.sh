


#12. Shell script to check whether the given number is even or odd.



clear
read -p"Enter a number : " n

if [ `expr $n %  2` -eq 0 ]; 
then  
  echo " $n is even."
else  
  echo " $n is odd."
fi
