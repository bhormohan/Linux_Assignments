# ! bin/bash
#9. Write a program to find the factorial of given number.
echo -n "Enter the value: "
read num
fact=1
for i in `seq 1 $num`
do 
  fact=`expr $fact \* $i`
done 
  echo "fact = $fact"


