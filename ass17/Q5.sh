# ! bin/bash 
 # 5. Take a array of 5 numbers and find maximum and minimum number from it.
 arrayName=(1 2 3 4 5 6 7)
 max=${arrayName[0]}
 min=${arrayName[0]}
  for i in "${arrayName[@]}"
  do
  if [[ "$i" -gt "$max" ]];
       then
         max="$i"
      fi
     if [[ "$i" -lt "$min" ]];
     then
 min="$i"
 fi
 done
 echo "Max is: $max"
 echo "Min is: $min" 

