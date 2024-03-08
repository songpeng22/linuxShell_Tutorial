#!/bin/bash
array=('aa' 'bbb' 'cccc' 'dddd' 'eeee')
unset array[3]
array[3]='fffff'
echo "elements of arrays:${array[@]}"
echo "element of array:${array[0]}"
echo "index of arrays:${!array[@]}"
echo "count of arrays:${#array[@]}"



