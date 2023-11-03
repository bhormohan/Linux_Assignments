# ! bin/bash
# 8. Write a program to print the table of a given number.

echo -n "Enter the number: "
read num
echo "The table of given number $num is: "


for i in `seq 10`
do 
  res=`expr $num \* $i`
  echo $res
done
