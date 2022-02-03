#!/bin/bash

#Print full name (comment) of all users in the system?

awk -F: '{print $5}' /etc/passwd