#!/bin/sh -l

NUM=`find -type f | grep java$ | wc -l`
find -type f | grep java$ | grep "@author ${INPUT_WHO}" >> $GITHUB_OUTPUT

TOTAL=`find -type f | grep java$ | grep "@author ${INPUT_WHO}" | wc -l`

number_of_files=$NUM

if [ $NUM -ne $TOTAL ]; then
  exit 1
fi
