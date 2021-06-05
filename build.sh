#!/bin/bash
set -euo pipefail

for RUST_VERSION in "$@"; do
    docker build --build-arg RUST_VERSION="$RUST_VERSION" -t "$DOCKER_REPO:$RUST_VERSION" .
done
