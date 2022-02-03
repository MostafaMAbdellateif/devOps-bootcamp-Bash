#!/bin/bash

#Get the sum of all accounts id’s ?

awk -F: 'BEGIN {sum = 0} \
            {sum += $3} \
        END \
        {print sum}' /etc/passwd