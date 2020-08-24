#!/bin/bash

# while loop
echo "while loop"
number=1
while [ $number -le 10  ]
do
	echo $number
	number=$(( number + 1 ))
done

# until loop
echo "until loop"
number=2
until [ $number -gt 10  ]
do
	echo $number
	number=$(( number + 1 ))
done
