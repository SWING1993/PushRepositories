#!/bin/bash
echo "Hello World!"
function rand(){
    min=$1
    max=$(($2-$min+1))
    num=$(($RANDOM+1000000000)) #增加一个10位的数再求余
    echo $(($num%$max+$min))
}
 
rnd=$(rand 400000 500000)
echo $rnd
touch $rnd
git add .
git commit -m 'orz -.-'
git push

