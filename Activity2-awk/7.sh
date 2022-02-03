#!/bin/bash

#Print all information about greatest uid ?

awk -F: 'BEGIN {max = $3} \
        { \
            if (max<=$3) { \
                max=$3; \
                info = $0 \
            } \
        } \
        END \
        {print info}' /etc/passwd