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


# orange
echo "orange"
cd /root/GitRepositories/orange/
git pull origin
git push github --all
git push github --tags


# MPM_Packstone
echo "Packstone"
cd /root/GitRepositories/MPM_Packstone/
git pull origin
git push github --all
git push github --tags


# TomatoPulp
echo "TomatoPulp"
cd /root/GitRepositories/TomatoPulp/
git pull origin
git push github --all
git push github --tags


# index
echo "index"
cd /root/GitRepositories/index/
git pull origin
git push github --all
git push github --tags


# Tomato
echo "Tomato"
cd /root/GitRepositories/Tomato/
git pull origin
git push github --all
git push github --tags



