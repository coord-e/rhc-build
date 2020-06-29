#!/bin/bash

set -eu

readonly RWD="$1"
shift

cd "/home/rubydev/workdir/$RWD"
exec "$@"
