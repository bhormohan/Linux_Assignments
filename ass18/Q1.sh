#!/bin/bash
while true 
do
   	echo "File and Directory Operations Menu"
   	echo "--------------------------------------------------"
   	echo "1. List files and directories in the given path"
   	echo "2. Display information about a file or directory"
   	echo "3. Create a directory"     
	echo "4. Create a file"
   	echo "5. Copy a file or directory"
   	echo "6. Move/Rename a file or directory"
   	echo "7. Delete a file or directory"
   	echo "8. Exit"
   	echo -n "Enter your choice: "
   	read choice


  	case $choice in
       		1)
	   		echo -n "Enter the path: "
	   		read path
	   		ls -l "$path"
	   		;;
       		2)
	   		echo -n "Enter the path: "
	   		read path
	   		if [ -e "$path" ];
		       	then
	       			stat "$path"
	   		else
	       			echo "File or directory does not exist."
		   	fi
	   		;;
       		3)
	   		echo -n "Enter the path and name of the directory to create: "
	   		read newdir
	   		mkdir -p "$newdir"
	   		;;
       		4)
	   		echo -n "Enter the path and name of the file to create: "
	   		read new
	   		touch "$new"
	   		echo "Add some contents to the file (Ctrl+D to save):"
	   		cat > "$new"
	   		;;
       		5)
	   		echo -n "Enter the source path: "
	   		read sourcepath
	   		echo -n "Enter the destination path: "
	   		read destination
	   		if [ -d "$sourcepath" ]
			then
	       			cp -r "$sourcepath" "$destination"
	   		else
	       			cp "$sourcepath" "$destination"
		   	fi
	   		;;
       		6)
	   		echo -n "Enter the source path: "
	   		read sourcepath
	   		echo -n "Enter the destination path: "
	   		read destination
	   		mv "$sourcepath" "$destination"
	   		;;
       		7)
	   		echo -n "Enter the path to delete (file or directory): "
	   		read delete_path
	   		rm -r "$delete_path"
	   		;;
       		8)
	   		exit 0
	   		;;
	esac
done
