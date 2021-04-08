#!/usr/bin/env sh

for DIR in $(echo "$@"|xargs -n1 dirname|sort -u); do
    gocyclo -over 10 ./"$DIR"
done
