#! /bin/bash
# 参数1为监控文件路径，安全起见填绝对路径
# 参数2为回调命令，可不填，即检测到文件修改后执行的命令
# 参数3为文件监控周期，可不填，默认为3秒
# 示例 ./fileChange 'D:/codePlace/aikey/main.cpp'

filePath=$1
callBackCmd=$2
[ $3 ] && intervalSecond=$3 || intervalSecond=3

cmd="ls -l $filePath"
flag=`$cmd | awk '{print \$5\$8}'`


echo "---------------------------------即时编译启动成功-------------------------------"
echo "监控路径=$filePath"
echo "回调命令=$callBackCmd"
echo "监控粒度=$intervalSecond 秒"
echo "---------------------------------------------------------------------------------"
echo ""

while [[ 1 ]]
do
    sleep $intervalSecond
    cflag=`$cmd | awk '{print \$5\$8}'`
    if [[ $cflag != $flag ]]
    then 
        # echo '改变'
        flag=$cflag
        if [[ $callBackCmd ]]
        then 
            $callBackCmd
        fi
    # else
        # echo '未变'
    fi
done