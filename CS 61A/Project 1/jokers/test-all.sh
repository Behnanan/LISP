#!/bin/bash

echo "tests:"
for file in test-*.scm
do
    echo "$file"
    racket -f $file
done
