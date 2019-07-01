#!/bin/sh
# make a list of wildcard domains with a mix of inputs

tlds="ca co.uk com ie nl de us uk jobs org.uk com.uk eu eu.com co.za com.au co.nz com.sg"
domains="job jobs erp temp temps associates search digital people recruit recruiting recruitment consulting consultancy consultants resource resources employ employer employment resourcing staff staffing talent"
gtlds="jobs careers temps"


for tld in $tlds
do
  for domain in $domains
  do
    echo ".*${domain}.${tld}"
  done
done

for gtld in $gtlds
do
  echo ".*${gtld}"
done
