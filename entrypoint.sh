#!/bin/sh

echo "start: $1"
echo "end: $2"

log=$(git log $1..$2 --pretty=format:'%h - %s (%an)')

echo "LOG<<EOF" >> $GITHUB_ENV
echo "$log" >> $GITHUB_ENV
echo "EOF" >> $GITHUB_ENV
