#!/bin/bash -

MESSAGE="this is a test from Clymber Loong"

if [ "$1" == "stdout" ] ; then
    echo "$MESSAGE" >&1
else
    echo "$MESSAGE" >&2
fi

exit $?
