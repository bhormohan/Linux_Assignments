# ! bin/bash
#3. Write a shell script to accept the name from the user and check whether user entered
#name is file or directory. If name is file display its size and if it is directory display its
#contents.

echo -n "Enter the name: "
read name
if [ -f $name ]
then
    echo "This is regular file"
    stat -c "size of file is = %s" $name
else 
    echo "This is directory"
    ls $name
fi

