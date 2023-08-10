#!/bin/sh
set -e
set -o pipefail

cd /github/workspace

echo "redocly version: $(redocly --version)"

output=$(redocly $1)

echo "::set-output name=output::$output"
