#!/bin/sh
set -e

# Patch app name at container startup — survives image updates
find /app/dist -type f \( -name "*.html" -o -name "*.js" -o -name "*.css" -o -name "*.webmanifest" \) | while read f; do
  sed -i 's/Stoat/AzCord/g' "$f"
done

exec "$@"
