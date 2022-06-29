#!/bin/bash
Branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
git pull origin "$Branch"
msg="$1"
if [[-z "${msg}"]]
then
msg=$(date '+%Y-%m-%d')
fi
git add .
git commit -m "$msg"
git push origin "$Branch"
echo "all done, my gay mate!"
