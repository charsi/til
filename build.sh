#!/usr/bin/env bash

set -euo pipefail

rm -rf "$BUILD_PATH"

# Install pt
go install github.com/charsi/pt@71ccbbc47417eef8f299f881d854364a41c7953d

# Build
~/go/bin/pt \
    -base-url 'https://nishil.in/til' \
    -template page.html \
    -dir "$BUILD_PATH" \
    -feed "$BUILD_PATH/feed.xml" \
    -highlight 'monokai' \
    ./**/*.md index.md


# Copy images
for dir in */; do
    dir=${dir%*/}
    images_dir="$dir/images"
    [ -d "$images_dir" ] && cp -r "$images_dir" "$BUILD_PATH/$dir/"
done
