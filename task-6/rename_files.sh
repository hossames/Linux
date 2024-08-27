#!/bin/bash

find $1 -name "*.txt" | while read -r file; do
  dirname=$(dirname $file)
  filename=$(basename $file)
  mv $file $dirname'/old_'$filename
done
