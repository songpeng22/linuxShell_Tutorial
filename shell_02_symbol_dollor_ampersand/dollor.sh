#!/bin/bash

# 1-1 $variable to use variable 
CMD=`realpath $0`
COMMON_DIR=`dirname $CMD`
echo -e "1-1 \$variable to use variable"
echo -e "realpath: $CMD"
echo -e "COMMAND DIR: $COMMON_DIR\n"

# 1-2 ${var} to use variable to seprate words
echo -e "1-2 \${variable} to use variable to seprate words"
x=1
echo -e "${x}yz\n"

# 1-3 ${var:-word} to return word if var is empty
echo -e "1-3 \${var:-word} to return word if var is empty"
var3=
echo -e "return allsave if var3 is empty: ${var3:-allsave}\n"

# 2-1 $0 to use current path
echo -e "2-1 \$0 to use current path"
echo -e `realpath $0`
echo -e "2-1 \$BASH_SOURCE to use current path"
var4=`realpath $BASH_SOURCE`
echo -e "\$BASH_SOURCE is $var4.\n"

# 3-1 ${#} string length
echo -e "3-1 \${#} to get string length"
str="abc"
echo -e "length of str is: ${#str}\n"

# 4-1 $@ to pass param | $*
echo -e "4-1 \$@ to pass param | \$*"
sh ./param.sh "a" "b" "c" "d\n"

# 5-1 concatenate strings
echo "enter first string:"
read str1
echo "enter second string:"
read str2
echo $str1$str2
echo -e "\n"

# 6-1 echo arrays
ARR=(aaa bbb ccc)
echo "arrays is: ${ARR[*]}"
echo "first element:${ARR[0]}"
for element in ${ARR[@]}
do
    echo "\$element is $element"
done

# 7-1 exit shell script
exit 2



