#!/usr/bin/env bash

######################################################################
# @author      : Frank Förster (f.foerster@do24.eu)
# @file        : app
# @created     : Wednesday Nov 15, 2023 12:23:44 CET
#
# @description : an app
######################################################################

source "errors.sh"

declare -a modules

for module_file in modules/*.module
do
    source "${module_file}"
done

for module in "${modules[@]}"
do
    "${module}"
done
