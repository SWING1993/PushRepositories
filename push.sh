#!/bin/bash
echo "Hello World!"

rm -rf /root/PushRepositories/build/*
cd /root/PushRepositories/build/

#设置变量key，存储密码的所有可能性（密码库），如果还需要其他字符请自行添加其他密码字符
#使用$#统计密码库的长度
key="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
num=${#key}
#设置初始密码为空
pass=''
#循环8次，生成8为随机密码
#每次都是随机数对密码库的长度取余，确保提取的密码字符不超过密码库的长度
for i in {1..8}
do
    index=$[RANDOM%num]
    pass=$pass${key:$index:1}
done

touch $pass

git add -A
git commit -m 'orz -.-'
#git push

