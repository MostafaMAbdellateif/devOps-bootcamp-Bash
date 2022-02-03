#!/bin/bash

#Print login, uid and full name (comment) of those uid is exactly 500 ?

awk -F: '$3==500 {print $7,$3,$5}' /etc/passwd