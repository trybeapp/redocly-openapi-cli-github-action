#!/bin/sh

cd /github/workspace

echo "openapi-cli version: $(openapi --version)"

output=$(openapi $*)
exitcode=$?

echo "::set-output name=output::$output"

if [ $exitcode -ne 0 ]; then
  exit 1
fi
