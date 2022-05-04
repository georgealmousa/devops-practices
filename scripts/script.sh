#!/bin/bash
date=`git log -1 > gitlog.txt && d=$(date +%Y-%m-%d)  &&  echo -n $d | awk -F "-" '{print $1 $2 $3}'` # for finding the date
commit8=`sed -n 1p gitlog.txt | awk -F " " '{print $2}' | cut -c1-8` && rm gitlog.txt # for getting 8 digit of the commit
version=$date"-"$commit8
echo $version
