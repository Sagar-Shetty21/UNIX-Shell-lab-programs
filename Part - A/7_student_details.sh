

#7. Shell script to create a file contains the following fields : student no, stu-dent name , age, sex , height and weight. Print all the details in neat format.


clear
read -p"Enter number of records : " n
i=1

while [ $i -le $n ]
do
     read -p"Enter student registration number ( 4 digits ) : " num
     read -p"Enter Student Name : " name
     read -p"Enter Student age : " age
     read -p"Enter Male/Female : " sex
     read -p"Enter student height : " ht
     read -p"Enter Student weight : " wt
     
     echo "$num|$name|$age|$sex|$ht|$wt" >> stdlist
     
     i=`expr $i + 1`
     done
     
     echo     "******* Student Information *********"
     echo
     printf " Regno \t Name \t\t   Age \t Sex  Height   Weight \n"
     echo "========================================================="
     awk -F "|" '{ printf("%6d %-19s %3d %5s %5d %8d \n",$1,$2,$3,$4,$5,$6)}' stdlist
     echo "========================================================="

     

