

#8. Shell script  to create emp file containg empname, empno, deptno and des-ignation.
#	a) Display empname and empno of any particular dept and the count of em-ployees.
#	b) Display empname and empno of employees who are not managers.


clear

read -p"Enter number of records : " n
i=1

while [ $i -le $n ]
do


   read -p"Enter employee no : " empno      
   read -p"Enter employee name : " ename     
   read -p"Enter Department : " dept   
   read -p"Enter Designation : " desg
   
    echo "$empno|$ename|$dept|$desg" >> emplist   
    
    i=`expr $i + 1`
    done
    
    echo     "******* Employee Information *********"
    echo 
    printf "Empno \t Name \t Department \t Designation\n"
    echo "==================================================="
    awk -F "|" '{ printf("%5d %-10s %-15s %-10s \n",$1,$2,$3,$4)}' emplist
    echo "===================================================" 
    echo
    
    #Query 1 - to count number of employees in given department
    read -p"Enter the employee department : " sdept
    awk -v se=$sdept -F "|" 'BEGIN {count=0} { if( $3==se ) { print $1,$2;count++ }} END {printf("Number of employees in %s department are : %d\n",se, count)}' emplist
    echo
    #Query 2 - to display employee names and numbers who are not managers
    echo "---The employees who are not managers---"
    awk -F "|" ' {if ( $4 != "manager" ) print $1,$2}' emplist

