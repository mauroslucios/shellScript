#!/usr/bin/env bash

find /  -iname "*.so"      \
        -user mauroslucios \
        -type f            \
        -size +1M          \
        -exec ls {}        \;