#!/bin/bash

echo -n "Enter the number of rows for the pyramid: "
read num_rows

if ! [[ "$num_rows" =~ ^[0-9]+$ ]];
then
    echo "Invalid input. Please enter a valid number."
    exit 1
fi

for ((i = 1; i <= num_rows; i++));
do
    for ((j = 1; j <= num_rows - i; j++));
    do
        echo -n "  "
    done

    for ((k = 1; k <= i; k++));
    do
        echo -n "$k "
    done

    for ((l = i - 1; l >= 1; l--));
    do
        echo -n "$l "
    done
    echo
done

