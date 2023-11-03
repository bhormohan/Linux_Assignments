# ! /bin/bash

while true
do
	echo "------------------------------"
	echo "Address Book Menu"
      	echo "------------------------------"
      	echo "1. Add a new contact"
      	echo "2. View all contacts" 
       	echo "3. Search for a contact"
      	echo "4. Delete a contact" 
       	echo "5. Count of contacts" 
       	echo "6. Exit"
	echo "------------------------------"
	echo "Enter Your Choice:"
	read choice
	echo "------------------------------"

	case $choice in
		1)
			echo "Enter Name: "
			read name
			echo "Enter email: "
			read email
			echo "Enter Mobile number: "
			read num
			cd /home/sunbeam/Assignment18/contacts/
			echo "$name" | cat > $name.txt
			echo "$email" | cat >> $name.txt
			echo "$num" | cat >> $name.txt
			echo "Successfully Added Contact"
			;;
		2)
			echo "All Contacts : "
			cd /home/sunbeam/Assignment18/contacts/
			ls
			;;
		3)	
			echo "Enter the name of the contact: "
			read name
			cd /home/sunbeam/Assignment18/contacts/
			if [ -e $name.txt ]
			then
				cat $name.txt
			else
				echo "Contact does not exists."
			fi
			;;

		4)
			echo "Enter the name of the contact to be deleted :"
			read name
			cd /home/sunbeam/Assignment18/contacts/
			if [ -e $name.txt ]
			then
				rm $name.txt
				echo "Contact successfully deleted."
			else
				echo "Contact does not exists."
			fi
			;;

		5)	
			echo -n "Number of Contacts :"
			cd /home/sunbeam/Assignment18/contacts/
			ls | wc -l
			;;

		6)
			exit 
			;;
	esac
done
