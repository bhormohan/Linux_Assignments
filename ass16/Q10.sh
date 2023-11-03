# ! bin/bash


echo -n "Enter the number: "
read n
a=0
b=1 

echo "The Fibonacci series is : "

for (( i=0; i<n; i++ ))
do
	echo -n "$a "
	result=$((a + b))
	a=$b
	b=$result
done
