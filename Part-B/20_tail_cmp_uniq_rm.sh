


#20. Menu driven shell script to demonstrate the use of tail , cmp, uniq  and rm commands.



clear
opt=y
while [ $opt = y ]
do
 clear
 echo "----------Menu driven program --------"
echo
echo
echo "1. Usage of tail command "
echo
echo "2. Usage of cmp command"
echo
echo "3. Usage of uniq command"
echo
echo "4. Usage of rm -r command"
echo
echo "enter your choice"
read ch
case $ch in
1) clear
   echo "================================"
   echo "tail displays lines from bottom of the file"
   echo
   printf "enter number of lines to display" 
   read n 
   echo   
   echo last $n lines of file temp 
   echo "------------------------"  
   echo  
   tail -$n temp;;
2) clear 
   echo "================================" 
   echo "cmp compares two files and gives the point of difference" 
   echo   
   echo temp1 and temp2 are compared  
   echo "------------------------"  
   echo   
   cmp temp1 temp2;;
3) clear 
  echo "================================" 
  echo "uniq eliminates adjacent duplicate lines"
  echo "=======================================" 
  echo  
  echo unique lines of temp1 
  echo 
  echo "------------------------" 
  cat temp1 | sort | uniq;;
4) clear  
  echo "================================" 
  echo " rm -r deletes the directory along wih contents" 
  echo "=============================================" 
  echo   
  echo "enter the subdirectory name"  
  read subdir
  mkdir $subdir 
  cd $subdir 
  touch file1 file2 
  echo current directory is `pwd` 
  cd ..  
  if rm -r $subdir 
  then    
	echo $subdir removed succesffully
  fi;;
*) echo "invalid choice"
esac
echo "do you like to continue ?"
read opt
done 
  echo  
  tail -$n temp;;
