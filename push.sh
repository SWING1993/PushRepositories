#!/bin/bash
echo "Hello World!"

function rand(){
    min=$1
    max=$(($2-$min+1))
    num=$(cat /dev/urandom | head -n 10 | cksum | awk -F ' ' '{print $1}')
    echo $(($num%$max+$min))
}
 
rnd=$(rand 100 500)
echo $rnd
touch $rnd
git add .
git commit -m 'orz -.-'
git push

