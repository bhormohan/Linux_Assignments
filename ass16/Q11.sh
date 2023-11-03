# ! bin/bash

#11. Write a program to calculate gross salary if the DA is 40%, HRA is 20% of basic salary.
#Accept basic salary form user and display gross salary (Result can be floating point
#value.

echo -n "Enter the number: "
read salary
gross=$( echo "$salary+((40/100)*$salary)+((20/100)*$salary)" | bc -l)
echo "The gross salary : $gross"

