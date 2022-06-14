

#10. Shell script to display all file names and file permissions.


echo " The files and their permissions are" 
echo "File name            Read   Write    Execute"
for file in *
do
  if [ -f $file ];
  then
  if [ -w $file ] ;
  then     
    W="Yes"
  else   
    W="No"
  fi 
  
  if [ -r $file ] ; 
  then  
    R="Yes"
  else 
    R="No"
  fi
  
  if [ -x $file ];
  then 
    X="Yes"
  else 
    X="No"
  fi
  printf "%-20s %6s %6s %6s\n" $file, $R, $W, $X
  fi
  done
  
