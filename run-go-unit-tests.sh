#!/usr/bin/env sh

PASS=true
for DIR in $(echo "$@"|xargs -n1 dirname|sort -u); do
    go test -cover -race ./"$DIR"
    if [ "$?" -eq 1 ]; then
        PASS=false
    fi
done

if [ "$PASS" = "false" ]; then
    exit 1
fi