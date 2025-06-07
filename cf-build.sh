#!/bin/bash

if [ -f "package.json" ]; then
  npm install
fi

hugo -b $CF_PAGES_URL --environment production --gc --minify --templateMetrics --templateMetricsHints --forceSyncStatic --enableGitInfo