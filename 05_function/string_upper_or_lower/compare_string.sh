#!/bin/bash
echo "enter string one:"
read str1

echo "enter string two:"
read str2

echo "make str1 lower:"
echo "${str1,,}"

echo "make str2 upper:"
echo "${str2^^}"

echo "make str2 upper first letter l:"
echo "${str2^l}"
