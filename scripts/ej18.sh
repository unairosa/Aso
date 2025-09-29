#!/bin/bash
for num in {1..5}; do
    for num2 in $(seq 1 "$num"); do
       echo -n "$num2"
    done
    echo
done
