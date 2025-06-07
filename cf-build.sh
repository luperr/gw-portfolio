#!/bin/bash

echo "Install Dart Sass Embedded..."

# This should be in the PATH.
BIN_DIR=/opt/buildhome/.binrc/bin

DARTSASS_VERSION=1.63.4

mkdir -p $BIN_DIR

curl -LJO https://github.com/sass/dart-sass/releases/download/${DARTSASS_VERSION}/dart-sass-${{DARTSASS_VERSION }}-linux-x64.tar.gz

tar -xvf dart-sass-${DARTSASS_VERSION}-linux-x64.tar.gz;

mv dart-sass $BIN_DIR

rm -rf dart-sass*;

sass --embedded --version

echo "Installing node dependacies"

if [ -f "package.json" ]; then
  npm install
fi

echo "Building..."

hugo -b $CF_PAGES_URL --gc --minify --templateMetrics --templateMetricsHints --forceSyncStatic --enableGitInfo