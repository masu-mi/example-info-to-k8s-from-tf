#!/usr/bin/env bash

## for manual operation
## This is aimed to init project manually.

set -eu

function info_log_var() {
  echo "[INFO] $1 = $(eval "echo \$$1")"
}

TOP_DIR=$(cd $(dirname $0); pwd)/..
info_log_var "TOP_DIR"

# create user
# grantee permission to user
# init tools

TF_WORK_DIR=${TOP_DIR}/tf
info_log_var "TF_WORK_DIR"

cd $TF_WORK_DIR
terraform init
cd -
