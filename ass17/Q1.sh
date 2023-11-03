# ! bin/bash

#Write a shell script which will take absolute path of file or dir from command line ( as a positional Parameter, Command line argument ).Check path is 
#correct or not.Print message in case of invalid path.If path is correct & if the path is of file, print its attributes(permission) ,size & owner name
#together.If path is of directory, give the count of directory and files in it.

echo -n "Enter the path:"
read path

dir_count=0
file_count=0

if [ -e $path ]
then
cd $path
  if [ -f $path ]
  then
    echo "File permissions"
    stat -c "size = %s, owner = %U" $path

  elif [ -d $path ]
  then

    dir_count=`find "$path" -type d | wc -l`
    file_count=`find "$path" -type f | wc -l`

     echo "Directory count: $dir_count"
     echo "file_count: $file_count"
  else
   echo "The path $path is neither directory nor file."
  fi
  
else
  echo "Invalid path, this path doesnot exist"

fi

