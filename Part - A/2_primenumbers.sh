

#2. Shell script To print all prime numbers between m and n.

echo "Enter the range m and n, m<n : "
read m n

echo "The prime numbers between $m and $n are as follows :- "

for a in $(seq $m $n)
do
  k=0
  for i in $(seq 2 $(expr $a - 1))
  do
    if [ $(expr $a % $i) -eq 0 ]
    then
      k=1
      break
    fi
  done
  if [ $k -eq 0 ]
  then
  echo $a
  fi
done
