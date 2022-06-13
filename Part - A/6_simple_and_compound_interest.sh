

#6. Write a menu driven program to calculate i) Simple interest  ii) Compound interest



while [ 1 ]
do
    echo "   ----MENU----"
    echo "1. simple interest"
    echo "2. compound interest"
    echo "3. exit"
    echo "Enter your choice"
    echo "---------------------"
    read choice
   
   case $choice in
1) read -p"Enter the value of P : " p 
   read -p"Enter the value of T : " t
   read -p"Enter the value of R : " r 
   si=`echo "scale=2;( $p * $t * $r ) / 100" | bc`
   echo "---------------------"
   echo "simple interest = $si" 
   echo "---------------------";;
2) read -p"Enter the value of P : " p 
   read -p"Enter the value of T : " t
   read -p"Enter the value of R : " r 
   ci=`echo "scale=2; ( $p * ( 1 +  $r / 100 ) ^ $t ) " | bc`
   echo "-------------------------"
   echo "compound interest = $ci" 
   echo "-------------------------";;
3) exit;;
*) echo "invalid choice";;

esac
done

