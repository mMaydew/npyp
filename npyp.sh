#!/usr/bin/bash

if [[ $# -eq 0 ]] ; then
    echo "No project name passed!"
    exit 0
fi

project=$1
dir=`pwd`
SOURCE=${BASH_SOURCE[0]}
script_dir=`dirname $SOURCE`

cp -r $script_dir/template/ $dir/$project/
cd $dir/$project
echo "# $project" >> README.md
git init
./.pre-commit/install.sh
