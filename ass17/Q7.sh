
#!/bin/bash

echo -n "Enter the file name from current directory: "
read file
ls 
mv $file .$file
ls 

echo ".....The file has been hide successfully....."
