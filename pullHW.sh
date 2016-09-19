#!/bin/bash
# ---------------------------------------------------------------------------
#     GitHub Classroom pull homework
# 
#		INSTRUCTIONS:
#		1) Run this file specifying the homework name and tagname
# ---------------------------------------------------------------------------
if [ -z "$1" ]
then
   echo Usage: pullHW [homework_name] [tagname]
   exit 1
fi
if [ -z "$2" ]
then
  tagname="grading"
else
  tagname="$2"
fi

currentdir=$(pwd)

cd "$currentdir/$1-student1"
git pull
git tag -a $tagname -m "grading this version"
git push origin $tagname

cd "$currentdir/$1-student2"
git pull
git tag -a $tagname -m "grading this version"
git push origin $tagname

cd "$currentdir"
