#!/bin/sh
set -e
set -o pipefail

cd /github/workspace

echo "openapi-cli version: $(openapi --version)"

output=$(openapi $1)

echo "::set-output name=output::$output"
