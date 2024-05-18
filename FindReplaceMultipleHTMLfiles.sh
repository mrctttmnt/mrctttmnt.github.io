#!/bin/bash
# FindReplaceMultipleHTMLfiles.sh

echo ' '
echo 'DO BACKUP OF Website FOLDER BEFORE PROCEEDING!!!'
echo ' '
sleep 5s
echo 'type oldstring (e.g. '2008-2015'):'
read oldstring
#oldstring='<br/ >'
#oldstring='2008-2015'
echo 'type newstring (e.g. '2008-2016'):'
read newstring
#newstring='<br/>'
#newstring='2008-2016'
echo 'type filenames (e.g. '*html'):'
read filenames

grep -rl "$oldstring" $filenames | xargs sed -i "s/$oldstring/$newstring/g"
