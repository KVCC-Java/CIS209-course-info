#!/bin/bash
# ---------------------------------------------------------------------------
#     GitHub Classroom clone homework
# 
#		INSTRUCTIONS:
#		1) Run this file specifying the homework name and optional tagname
# ---------------------------------------------------------------------------
if [ -z "$1" ]
then
   echo Usage: cloneHW [homework_name] [tagname]
   exit 1
fi
if [ -z "$2" ]
then
  tagname="grading"
else
  tagname="$2"
fi

currentdir=$(pwd)

git clone https://github.com/KVCC-Java/$1-student1.git
cd "$1-student1"
git tag -a $tagname -m "grading this version"
git push origin $tagname
cd "$currentdir"

git clone https://github.com/KVCC-Java/$1-student2.git
cd "$1-student2"
git tag -a $tagname -m "grading this version"
git push origin $tagname
cd "$currentdir"
