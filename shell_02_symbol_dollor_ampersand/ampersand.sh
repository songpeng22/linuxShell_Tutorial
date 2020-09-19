#!/bin/bash
# test with stdout stderr
# stdout only to fileStandardOutput.txt
ls -al 1>fileStandardOutput.txt 2>fileStandardError.txt
# stderr only to fileStandardError.txt
ls +al 1>fileStandardOutput.txt 2>fileStandardError.txt
# > same as 1>
ls -al >fileStandardOutput.txt
# together to one file
ls -al >file.txt 2>&1
# or
ls -al >& file.txt
