# ! bin/bash
#7. Write a Program to find whether a given number is positive or negative

echo -n "Enter the number: "
read num
if [ $num -gt 0 ]
then
    echo "The given number is positive"
elif [ $num -lt 0 ]
then
    echo "The given number is negative"
else 
    echo "The given number is 0"
fi

