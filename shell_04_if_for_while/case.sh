#!/bin/bash

str=bye
while :
do
  case $str in
	hello)
		echo "Hello yourself!"
		break
		;;
	bye)
		echo "See you again!"
		break
		;;
 	*)
		echo "Sorry, I don't understand"
		break
		;;

esac
done
echo 
