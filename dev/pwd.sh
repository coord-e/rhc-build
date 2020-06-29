#!/bin/bash

set -eu

readonly RWD="$(realpath --relative-to="$RHC_ROOT" "$PWD")"
echo "/home/rubydev/workdir/$RWD"
