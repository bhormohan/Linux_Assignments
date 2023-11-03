# ! bin/bash
# 14. Write a shell script to display only executable files of current directory.

ls -F | grep '*$'
