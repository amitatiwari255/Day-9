#!/bin/bash -x

counter=0
Fruits[((counter++))]=apple
Fruits[((counter++))]=mango
Fruits[((counter++))]=guava
echo ${Fruits[@]}

echo ${Fruits[2]}
