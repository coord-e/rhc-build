#!/bin/bash

set -eu

readonly DOCKER=${DOCKER:-docker}
readonly DOCKER_IMAGE=${DOCKER_IMAGE:-koichisasada/rhc}

readonly RWD="$(realpath --relative-to="$RHC_ROOT" "$PWD")"

$DOCKER run -it -v "$RHC_ROOT":/home/rubydev/workdir "$DOCKER_IMAGE" \
  sudo -u rubydev /home/rubydev/workdir/dev/exec_inner.sh "$RWD" "$@"
