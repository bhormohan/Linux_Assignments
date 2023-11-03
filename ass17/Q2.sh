# ! bin/bash

# Write a shell script, which will take a word from user and always gives its lower case value.i.e. 
#if user entered : CaSE
#output should be : case
#if user entered : cAsE
#output should be : case

echo "Enter the word:"
read word

lowercase=`expr $word | tr "A-Z" "a-z"`
echo "Lowercase of given word is: $lowercase"




