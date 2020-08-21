#!/bin/bash

# 1-1 $variable to use variable 
CMD=`realpath $0`
COMMON_DIR=`dirname $CMD`
echo "1-1 \$variable to use variable"
echo "realpath: $CMD"
echo "COMMAND DIR: $COMMON_DIR"

# 1-2 ${variable} to use variable to seprate words
echo "1-2 \${variable} to use variable to seprate words"
x=1
echo "${x}yz"

# 2-1 $0 to use current path
echo "2-1 \$0 to use current path"
echo `realpath $0`

# 3-1 ${#} string length
echo "3-1 \${#} to get string length"
str="abc"
echo "length of str is: ${#str}"

# 4-1 $@ to pass param | $*
echo "4-1 \$@ to pass param | \$*"
sh ./param.sh "a" "b" "c" "d"


# 5-1 exit shell script
exit 2



