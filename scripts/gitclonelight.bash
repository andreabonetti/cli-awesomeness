#!/bin/bash

# gitclonelight
#
# Description:
# Update existing git folder by cloning
# without the whole git history (--depth=1).
# So you avoid downloading large amount of data.
#
# Usage:
# ./gitclonelight.bash git_repo_folder_path
# where git_repo_folder_path is the path of the
# git repository folder
#

# get input variable
FOLD=$1

# get git url
pushd $FOLD
URL=$(git remote get-url origin)
popd

# remove folder
rm -rf $FOLD

# git clone without history
git clone --depth=1 $URL

