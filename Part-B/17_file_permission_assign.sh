


#17.Shell script to assign a file permission to a given file using 
#    a) symbolic mode  b) absolute mode



clear
option=y
while [ $option = y ]
do
  echo "1. Symbolic mode     2. Absolute mode"
  echo "enter your choice"
  read ch
 done 
 
  case $ch in  
  1) clear
	echo "changing the file permission in symbolic mode" 
    echo `pwd` contents are
	ls -l   
	echo "enter the file name" 
    read fname    
	echo "enter the file type u/g/o" 
    read type 
    echo "enter one of the permission r/w/x" 
    read permission 
	
	#changing the mode with given input     
	chmod $type+$permission $fname  
	echo "after changing the permission" 
    ls -l 
    echo;; 
  2) clear  
    echo "changing the permission is absolute mode" 
    echo `pwd` contents are  
    ls -l
	echo "enter the filename"  
	read fname   
	echo "enter the permission"   
	read permission
	chmod $permission $fname
	echo "after changind the file permission"  
	ls -l 
	echo;; 
  esac    
    echo "do you want to continue y/n "
  read option
