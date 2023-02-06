#! /bin/bash

root=$1
path=$2
plantform=$3


echo `date`'---------------'
if [[ $plantform -eq 1 ]]
then 
  g++ -o main.exe -fexec-charset=gbk $path    
else
  g++ -o main $path     
fi


if [[ $plantform -eq 1 ]]
then 
  $root/main.exe
else
  $root/main
fi
echo ''
echo ''



