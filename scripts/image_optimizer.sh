#!/bin/bash

# Directories
SOURCE_DIR="/var/www/html/images"
BACKUP_DIR="/var/www/html/optimized_images"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

echo "Optimizing images from $SOURCE_DIR to $BACKUP_DIR..."

# Loop through images
for image in "$SOURCE_DIR"/*.{jpg,jpeg,png,JPG,JPEG}; do
  if [[ -f "$image" ]]; then
    filename=$(basename "$image")
    convert "$image" -strip -interlace Plane -quality 85 "$BACKUP_DIR/$filename"
    echo "Optimized: $filename"
  fi
done

echo "Optimization complete!"
