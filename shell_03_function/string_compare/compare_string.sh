#!/bin/bash
echo "enter string one:"
read str1

echo "enter string two:"
read str2

if [ "$str1" == "$str2" ]; then
    echo "equal."
else
    echo "not equal."
fi

if [ "$str1" \< "$str2" ]; then
    echo "smaller."
elif [ "$str1" \> "$str2" ]; then 
    echo "bigger."
else
    echo "euqal length."
fi
