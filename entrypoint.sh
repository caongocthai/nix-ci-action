#!/bin/sh -l

set -x

nix-build -A ${INPUT_CI_NAME}
