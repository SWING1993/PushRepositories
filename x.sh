#!/bin/bash
echo "Hello World !"
rm -rf /root/GitRepositories/orz/build/*
cd /root/GitRepositories/orz/build/
touch config

echo "$RANDOM">>config

cd /root/GitRepositories/orz/
git add --all .
git commit -m "update"
git push
