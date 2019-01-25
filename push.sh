#!/bin/bash
echo "Hello World!"

key="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
num=${#key}
pass=''
for i in {1..8}
do
    index=$[RANDOM%num]
    pass=$pass${key:$index:1}
done

rm -rf /root/GitRepositories/PushRepositories/build/*
cd /root/GitRepositories/PushRepositories/build/
touch $pass

cd /root/GitRepositories/PushRepositories/
git add --all .
git commit -m 'orz -.-'
git push origin master
git push gitlab master
