#!/bin/bash

echo "Installing node dependacies"

if [ -f "package.json" ]; then
  npm install
fi

echo "Building..."

hugo -b $CF_PAGES_URL --environment production --minify 