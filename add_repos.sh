#!/bin/sh
for i in `cat repos.txt`; do
    name=`python -c "print '$i'['$i'.rfind('/')+1:].replace('.git', '').replace('.vim', '')"`
    if [ ! -e "bundle/$name" ]; then
        git submodule add $i bundle/$name
    fi
done

