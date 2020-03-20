#!/usr/bin/env sh

## for both manual and CD pipeline

set -eu

TOP_DIR=$(cd $(dirname $0); pwd)/..

function info_log_var() {
  echo "[INFO] $1 = $(eval "echo \$$1")"
}

name=$1
target=$2

mkdir -p $(dirname $target)
cp $TOP_DIR/tmp/$name $target
