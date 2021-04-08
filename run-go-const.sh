#!/usr/bin/env sh

for DIR in $(echo "$@"|xargs -n1 dirname|sort -u); do
    goconst ./"$DIR"
done
