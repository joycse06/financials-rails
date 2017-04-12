#! /usr/bin/env bash

PREFIX="$TRAVIS_BUILD_DIR/dependencies"

set -x

echo "Installing Dependencies"

echo "Processing secrets and settings."
for f in ./config/*.sample
do
  echo "Copying $f to ${f%.*}"
  cp $f ${f%.*}
done

set +x
