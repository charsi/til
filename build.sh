#!/usr/bin/env bash

set -euo pipefail

rm -rf "$BUILD_PATH"

# Install pt
go install github.com/hoffa/pt@latest

# Build
~/go/bin/pt -base-url 'https://nishil.in/til' \
    -highlight 'monokai' \
    -dir "$BUILD_PATH" \
    -template page.html \
    ./**/*.md index.md

# Copy images
for dir in */; do
    dir=${dir%*/}
    images_dir="$dir/images"
    [ -d "$images_dir" ] && cp -r "$images_dir" "$BUILD_PATH/$dir/"
done

mv feed.xml "$BUILD_PATH/feed.xml"