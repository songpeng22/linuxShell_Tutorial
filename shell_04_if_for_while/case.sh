#!/bin/bash

str=bye
case $str in
	hello)
		echo "Hello yourself!"
		;;
	bye)
		echo "See you again!"
		;;
 	*)
		echo "Sorry, I don't understand"
		;;

esac
echo 
