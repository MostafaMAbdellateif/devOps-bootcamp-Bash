#!/bin/bash

#Script to sort all integer input argument from high to low?

echo $@ | sed 's/ /\n/g' | sort -n -r