#!/bin/bash

c=1; d=1; mkdir -p dir_${d}

for file in *
do
        if [ $c -eq 11 ]
        then
                d=$(( d + 1 )); c=0; mkdir -p dir_${d}
        fi
        mv "$file" dir_${d}/
        c=$(( c + 1 ))
done
