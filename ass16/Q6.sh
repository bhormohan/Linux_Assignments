# ! bin/bash
# 6. Write a Program to find whether a given year is a leap year or not

echo -n "Enter the year: "
read year
if [ `expr $year % 4` -eq 0 -a `expr $year % 100` -ne 0 -o `expr $year % 400` -eq 0  ]
then 
    echo "This is leap year"
else
    echo "This is not leap year"
fi
