#!/bin/bash
set -euo pipefail

for RUST_VERSION in "$@"; do
    docker push "$DOCKER_REPO:$RUST_VERSION"
done
