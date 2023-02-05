#! /bin/bash

root="D:/codePlace/key_elf"
path="$root/main.cpp"
cbCmd="bash $root/shell/cb.sh $root $path"

./shell/fileChange.sh $path "$cbCmd" 1



