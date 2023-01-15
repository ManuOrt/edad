#!/bin/bash

RESULTADO=0

for arg in "$@"; do
    RESULTADO=$(($RESULTADO + $arg));
    echo "Argument: $arg"
done
result=`expr $RESULTADO / $#`
echo $result