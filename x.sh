#!/bin/bash
echo "Hello World !"
rm -rf /root/GitRepositories/orz/build/*
cd /root/GitRepositories/orz/build/
touch $RANDOM
cd /root/GitRepositories/orz
git add .
git commit -m "update"
git push
