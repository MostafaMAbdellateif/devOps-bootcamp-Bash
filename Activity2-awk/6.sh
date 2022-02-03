#!/bin/bash

#Change lp to mylp ?

awk 'gsub("lp", "mylp"); {print $0}' /etc/passwd