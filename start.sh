#! /bin/bash

root="/Users/goyoo/codePlace/key_elf"                  # 项目根目录
main="$root/main.cpp"                                  # 项目入口文件
watch="$root/main.cpp"                                 # 监控文件或目录
plantform=2                                            # 操作系统  1-windows  2-unix

# 文件改动后回调命令
cbCmd="bash $root/shell/cb.sh $root $main $plantform"  

# 启动监控，即时编译
./shell/fileChange.sh $watch "$cbCmd" 1                 



