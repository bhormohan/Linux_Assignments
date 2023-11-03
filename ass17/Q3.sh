
# ! bin/bash

#Write a shell script of menu driven which will take month name or month number as input and display the days of month. ( There should be 13 cases , 
#13th case is of EXIT )
#i.e if user entered : jan
#days in jan are : 31
#if user entered : 1
#days in jan are : 31
#And so on. Menu should be continuosly running. On exit menu script should be stop.

echo -e " Enter month name\n Enter month number\n Exit"

echo -n "Enter the month name or number or 13 to exit :"
read choice

case $choice in 
  1|jan) echo -n "In January 31 day"
  ;;

  2|feb) echo -n "In February There are 28/29 days"
  ;;

  3|mar) echo -n "In March there are 31 days"
  ;;

  4|apr) echo -n "In april there are 30 days"
  ;;

  5|may) echo -n "In may there are 31 days"
  ;;

  6|jun) echo -n "In jun there are 30 days"
  ;;

  7|jul) echo -n "In jul there are 31 days"
  ;;

  8|aug) echo -n "In aug there are 31 days"
  ;;
  
  9|sep) echo -n "In sep there are 30 days"
  ;;

  10|oct) echo -n "In oct there are 31 days"
  ;;

  11|nov) echo -n "In november there are 30 days"
  ;;

  12|dec) echo -n "In december there are 30 days"
  ;;
 
  13|exit) echo "Exiting the menu..."
  exit 0
  ;;

  *)
  echo "Invalid choice"
  ;;

esac

