#!/bin/bash

CUR_FILE=`realpath $0`
CUR_PATH=`dirname $CUR_FILE`
echo "\$CUR_PATH is:$CUR_PATH"
source $CUR_PATH/source_target.sh
echo "\$config1 in source_target.sh can be used:$config1"
