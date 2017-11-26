#!/bin/sh

updates=$(yaourt -Qua | wc -l)
if [[ "$updates" != "0" ]]; then
    echo "$updates"
fi
