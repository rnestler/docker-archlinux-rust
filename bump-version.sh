#!/usr/bin/bash

set -euo pipefail

function die() {
    echo "$@"
    exit 1
}


[ $# -eq 1 ] || die "Usage: $0 [new_version]"

VERSION_REGEX="1\.[0-9]+\.[0-9]+"
new_version="$1"

[[ "$new_version" =~ $VERSION_REGEX ]] || die "Invalid version $new_version"

git switch -c "bump-versions-to-include-$1"

sed -i -E "s/($VERSION_REGEX) ($VERSION_REGEX) ($VERSION_REGEX)/\\2 \\3 $new_version/g" .github/workflows/publish-docker-images.yml

git add .github/workflows/publish-docker-images.yml

git commit -m "Bump versions to include $new_version"
