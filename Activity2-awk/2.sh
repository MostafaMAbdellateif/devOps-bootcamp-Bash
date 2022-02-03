#!/bin/bash

# Print login, full name (comment) and home directory of all users. ( Print each line preceded by a line number)?

awk -F: '{print NR,$7,$5,$6}' /etc/passwd