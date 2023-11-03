# ! bin/bash
# 4. Write a shell script to determine whether a given number is prime or not

echo -n "Enter the number: "
read num

i=2
while [ $i -lt $num ]
do 
  if [ `expr $num % $i` -eq 0 ]
  then 
      echo "The number is not prime"
      break
  fi
  i=`expr $i + 1`
done
if [ $i -eq $num ]
then
    echo "The number is prime"
fi
