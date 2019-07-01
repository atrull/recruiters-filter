#!/bin/sh

# make list of old and new
cat domains.txt newdomains.txt | grep . | sort | uniq > mergeddomains.txt

# replace old with merged list
mv mergeddomains.txt domains.txt

