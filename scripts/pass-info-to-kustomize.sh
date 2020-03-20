#!/usr/bin/env sh

## for both manual and CD pipeline

set -eu

TOP_DIR=$(cd $(dirname $0); pwd)/..
TF_WORK_DIR=${TOP_DIR}/tf

cd $TF_WORK_DIR
terraform output -no-color \
  | awk -f $TOP_DIR/scripts/save-output.awk \
    -v target=$TOP_DIR/tmp
