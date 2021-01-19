#!/bin/bash

foo()
{

    case $1 in
        hello)
            echo "Hello yourself!"
            ;;
        bye)
            echo "See you again!"
            ;;
        first)
            echo "fist"
            ;&
        second)
            echo "second"
            ;;
        *)
            echo "Sorry, I don't understand"
            ;;

    esac
    echo 
}

foo first

foo hello
