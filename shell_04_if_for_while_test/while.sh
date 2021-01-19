#!/bin/bash

# while loop
echo "while loop"
number=1
while [ $number -le 10  ]
do
	echo $number
	number=$(( number + 1 ))
done
echo -e "\n"

# until loop
echo "until loop"
number=2
until [ $number -gt 10  ]
do
	echo $number
	number=$(( number + 1 ))
done
echo -e "\n"

# while loop , read file line by line
echo "while loop , read file line by line"
inputfile=./textfile.txt
while read -r line
do
    echo $line
done < "$inputfile"
echo -e "\n"

# while loop , read lines from command
echo "while loop , read lines from command"
while IFS= read -r line
do
   ## take some action on $line
  echo "$line"
done < <(ps u)
echo -e "\n"
