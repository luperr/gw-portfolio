#!/bin/bash

echo "Install Dart Sass Embedded..."

# This should be in the PATH.
asdf install ruby 3.2.2


echo "Installing node dependacies"

if [ -f "package.json" ]; then
  npm install
fi

asdf install ruby 3.2.2

echo "Building..."

hugo -b $CF_PAGES_URL --gc --minify --templateMetrics --templateMetricsHints --forceSyncStatic --enableGitInfo