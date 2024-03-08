#!/bin/bash
my_array=(A B "C" D)

echo "第一个元素为: ${my_array[0]}"
echo "第二个元素为: ${my_array[1]}"
echo "第三个元素为: ${my_array[2]}"
echo "第四个元素为: ${my_array[3]}"

echo "数组的元素为: ${my_array[*]}"
echo "数组的元素为: ${my_array[@]}"

echo "数组元素个数为: ${#my_array[*]}"

index=0
while [ ${index} -lt ${#my_array[*]} ] 
do
    echo "数组的元素${index}为: ${my_array[${index}]}"
    index=$((index + 1));
done

compiler_array[0]="armv7a-linux-androideabi21-clang++"
compiler_array[1]="aarch64-linux-android21-clang++"
compiler_array[2]="arm-linux-gnueabihf-g++"
compiler_array[3]="aarch64-linux-gnu-g++"

echo "elements[0] is:${compiler_array[0]}"
echo "elements[1] is:${compiler_array[1]}"
echo "elements[2] is:${compiler_array[2]}"
echo "elements[3] is:${compiler_array[3]}"
