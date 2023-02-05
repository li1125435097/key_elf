#! /bin/bash

root=$1
path=$2

g++ $path
echo ''
echo ''
$root/a.exe
echo ''
echo `date`'---------------'


