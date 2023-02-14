#!/bin/sh -l

echo "::debug::{Running...}"

NUM=`find -type f | grep java$ | wc -l`
# find -type f | grep java$ | grep "@author ${INPUT_WHO}" >> $GITHUB_OUTPUT

TOTAL=`find -type f | grep java$ | xargs grep "@author ${INPUT_WHO}" | wc -l`

number_of_files=$NUM

if [ $NUM -ne $TOTAL ]; then
  echo "::debug::{There are $NUM files with $TOTAL authors}"
  exit 1
fi


#echo "::group::Metrics"
#echo "More information..."
#echo "::endgroup::"


echo "::debug::{Everything is ok $NUM = $TOTAL }"
exit 0
