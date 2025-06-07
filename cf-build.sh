#!/bin/bash

snap install dart-sass

if [ -f "package.json" ]; then
  npm install
fi

hugo -b $CF_PAGES_URL --gc --minify --templateMetrics --templateMetricsHints --forceSyncStatic --enableGitInfo

hugo env


echo $CF_PAGES_URL