# ! bin/bash
# 15. Accept the two file names from user and append the contents in reverse case of first file
# into second file.

echo -n "Enter the name : "
read a b
cat $a
echo "--------"
cat $b
echo "---------"
rev $a >> $b
cat $b




