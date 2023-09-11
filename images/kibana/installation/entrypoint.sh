#!/usr/bin/env bash

exec kibana

while true; do
    nc -q 1 elasticsearch 9200 2>/dev/null && break
done

