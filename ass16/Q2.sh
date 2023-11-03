# ! bin/bash
#Write a shell script to display menu like “1. Date, 2. Cal, 3. Ls, 4. Pwd, 5. Exit” and execute the commands depending on user choice.

echo -e "1. Date\n 2. cal\n 3. ls\n 4. pwd\n 5. exit"
echo -n "Enter the choice: "
read choice

case $choice in
 1)
 echo "The date is: "
 date
 ;;

 2)
 echo "The calender of current month is: "
 cal
 ;;

 3)
 echo "The list is: "
 ls
 ;;

 4)
 echo "The present working directoryt is : "
 pwd
 ;;

 *)
 echo "exit"
 ;;
esac
