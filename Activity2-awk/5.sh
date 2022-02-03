#!/bin/bash

#Print line from 5 to 15 from /etc/passwd ?

awk 'NR>=5 && NR<=15 {print $0}' /etc/passwd