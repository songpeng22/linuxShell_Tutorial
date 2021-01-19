#!/bin/bash

# for cycle 1 3 5
echo "for cyle 1:"
for i in 1 3 5
do
	echo $i
done
	
# for cycle 2
echo "for cycle 2:"
for i in {1..10}
do
    echo $i
done

# for cycle 3
echo "for cycle 3:"
for (( i=0; i<5; i++ ))
do
    if [ $i -gt 3 ]; then
        break
    fi
    echo $i
done

   
