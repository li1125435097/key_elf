#! /bin/bash

root=$1
path=$2

g++ -fexec-charset=gbk $path
echo ''
echo ''
$root/a.exe
echo ''
echo `date`'---------------'


