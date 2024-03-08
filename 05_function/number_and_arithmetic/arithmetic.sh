#!/bin/bash
n1=3
n2=4

# 1-1 add
echo $((n1 + n2))
echo $((n1 - n2))
echo $((n1 * n2))
echo $((n1 / n2))
echo -e "\n"

# 1-2 expr add
echo $(expr $n1 + $n2)
echo $(expr $n1 - $n2)
echo $(expr $n1 \* $n2)
echo $(expr $n1 / $n2)

# hex value / decimal value
echo "enter hex value:"
read hex
echo -n "decimal value of ${hex^^} is:"

echo "obase=10; ibase=16; ${hex^^}" | bc
echo -e "\n"
