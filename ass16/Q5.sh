# ! bin/bash
#5. Write a Program to find the greatest of three numbers
echo -n "Enter the numbers: "
read num1 num2 num3
if [ $num1 -gt $num2 -a $num1 -gt $num3 ]
then
    echo "The num1 = $num1 is greater number"
elif [ $num2 -gt $num1 -a $num2 -gt $num3 ]
then
    echo "The num2 = $num2 is greater number"

else
    echo "The num3 = $num3 is greater number"
fi
