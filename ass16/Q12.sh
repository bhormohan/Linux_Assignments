# ! bin/bash

#12. Write a shell script to accept a filename as argument and displays the last modification
#time if the file exists and a suitable message if it doesn’t exist.

echo -n "Enter file name: "
read filename

if [ -e $filename ]
then
  echo "If file exist" `ls -l $filename | cut -d " " -f6,7,8`
else
  echo "The file does not exist"
fi
