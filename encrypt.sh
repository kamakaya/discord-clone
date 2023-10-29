#!/bin/bash
while IFS= read -r line; do
    echo -n "$line" | base64
    echo
done
