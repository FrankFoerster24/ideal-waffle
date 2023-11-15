#!/usr/bin/env bash

######################################################################
# @author      : Frank Förster (f.foerster@do24.eu)
# @file        : test
# @created     : Wednesday Nov 15, 2023 12:34:03 CET
#
# @description : tests
######################################################################

source "errors.sh"

if [ -n "${TEST:-""}" ]
then
    "modules/${TEST}.test"
else
    for test in modules/*.test
    do
        "${test}"
    done
fi

