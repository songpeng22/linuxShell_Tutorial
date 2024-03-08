#!/bin/bash
a=12

# if [ ] expression
if [ $a -gt 12 ];then
    echo "bigger than 12"
elif [ $a -gt 10 ];then
    : #do nothing
else
    echo "less than 10"
fi

# if (( )) expression
if (( $a > 10 ));then
    echo "bigger than 10"
else
    echo "less than 10"
fi

# if [ ] expression
if [[ $a > 10 ]];then
    echo "bigger than 10"
else
    echo "less than 10"
fi


