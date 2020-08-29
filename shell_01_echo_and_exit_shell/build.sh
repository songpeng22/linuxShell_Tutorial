#!/bin/bash

# normal echo
echo "hello shell"
echo "second hello"
echo "3st hello"

# colored echo
echo -e "\033[30m 黑色字 \033[0m" 
echo -e "\033[31m 红色字 \033[0m" 
echo -e "\033[32m 绿色字 \033[0m" 
echo -e "\033[33m 黄色字 \033[0m" 
echo -e "\033[34m 蓝色字 \033[0m" 
echo -e "\033[35m 紫色字 \033[0m" 
echo -e "\033[36m 天蓝字 \033[0m" 
echo -e "\033[37m 白色字 \033[0m"

echo -e "\033[40;37m 黑底白字 \033[0m" 
echo -e "\033[41;37m 红底白字 \033[0m" 
echo -e "\033[42;37m 绿底白字 \033[0m" 
echo -e "\033[43;37m 黄底白字 \033[0m" 
echo -e "\033[44;37m 蓝底白字 \033[0m" 
echo -e "\033[45;37m 紫底白字 \033[0m" 
echo -e "\033[46;37m 天蓝底白字 \033[0m" 
echo -e "\033[47;30m 白底黑字 \033[0m" 

# color variable
RED_COLOR='\E[1;31m'   #红
GREEN_COLOR='\E[1;32m' #绿
YELOW_COLOR='\E[1;33m' #黄
BLUE_COLOR='\E[1;34m'  #蓝
PINK='\E[1;35m'        #粉红
RES='\E[0m'

echo -e  "${RED_COLOR}======red color======${RES}"
echo -e  "${YELOW_COLOR}======yelow color======${RES}"
echo -e  "${BLUE_COLOR}======green color======${RES}"
echo -e  "${GREEN_COLOR}======green color======${RES}"
echo -e  "${PINK}======pink color======${RES}"

# color variable at end
SETCOLOR_SUCCESS="echo -en \\033[1;32m"
SETCOLOR_FAILURE="echo -en \\033[1;31m"
SETCOLOR_WARNING="echo -en \\033[1;33m"
SETCOLOR_NORMAL="echo -en \\033[0;39m"

echo ----oldboy trainning success-----  &&  $SETCOLOR_SUCCESS
echo ----oldboy trainning failure-----  &&  $SETCOLOR_FAILURE
echo ----oldboy trainning warning-----  &&  $SETCOLOR_WARNING
echo ----oldboy trainning normal-----  &&  $SETCOLOR_NORMAL

# local variable
local_test()
{
    local a b c d
    a=1
    b=2
    c=3
    d=4
    echo "local variable c is $c"
}
local_test

# exit
exit 2
echo "fourth hello"
