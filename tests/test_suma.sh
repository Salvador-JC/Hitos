#!/bin/bash

# Test simple: comprobar que 2 + 2 = 4
result=$((2+2))

if [ "$result" -eq 4 ]; then
    echo "OK: El test pasó"
    exit 0
else
    echo "ERROR: El test falló"
    exit 1
fi
