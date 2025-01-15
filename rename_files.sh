#!/bin/bash
counter=1
for file in *.sql; do
    mv "$file" "$counter-$(basename "$file")"
    counter=$((counter + 1))
done
