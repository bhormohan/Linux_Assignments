# ! bin/bash

# 4. Write a shell script to check if the entered mobile is valid or not ( 0 or +91 before 10 digit number is valid mobile number.) Take mobile numb# er from user and check its validity.

echo -n "Enter the mobile number: "
read mobile_number
mobile_number=$(echo "$mobile_number" | tr -d ' -')
if [[ $mobile_number =~ ^(\+91|0)[0-9]{10}$ ]];
then
   echo "This is valid mobile number"
else
   echo "This is invalid mobile number"
fi
