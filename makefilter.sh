#!/bin/sh

# merge newdomains
sh mergenewdomains.sh 

# we dynamicaly generate the wildcard list
WILDCARDLIST=`./wildcards.sh | tr "\n" "\|" | sed 's/|$//g'`

# we pull in and clean up the static list and remove the spare pipe at the end
DOMAINLIST=`tr "\n" "\|" <  domains.txt | sed 's/|$//g'`

# using the template, replace the entry we expect with the list

cat maildrop.template | sed "s/PIPESEPARATEDLIST/$WILDCARDLIST/g" > jobs.mailfilter

cat maildrop.template | sed "s/PIPESEPARATEDLIST/$DOMAINLIST/g" >> jobs.mailfilter

# tadaaa
