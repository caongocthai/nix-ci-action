#!/bin/sh -l

set -x

cd ${INPUT_NIX_PATH}
nix-build -A ${INPUT_CI_NAME}
