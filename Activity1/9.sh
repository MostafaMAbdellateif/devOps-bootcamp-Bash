#!/bin/bash

#Script to sort content of file /etc/passwd based on the user id ?

sort -t: -k3 -n /etc/passwd