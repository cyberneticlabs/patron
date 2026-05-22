#!/bin/bash
# Setup i18n symlinks for Nuxt multi-layer project.
# Usage: sh scripts/setup-i18n-symlinks.sh [LAYERS_ROOT] [SYMLINK_DIR]

set -e

LAYERS_ROOT="${1:-src/layers}"
SYMLINK_DIR="${2:-i18n/locales}"

if [ ! -f "package.json" ]; then
    echo "Error: Please run this script from the project root."
    exit 1
fi

echo "Configuration:"
echo "  Source Layers: $LAYERS_ROOT"
echo "  Target Mirror: $SYMLINK_DIR"
echo "Synchronizing i18n symlinks..."

mkdir -p "$SYMLINK_DIR"

if [ ! -d "$LAYERS_ROOT" ]; then
    echo "Warning: $LAYERS_ROOT not found. Skipping layer sync."
    exit 0
fi

for layer_dir in "$LAYERS_ROOT"/*; do
    if [ -d "$layer_dir/locales" ]; then
        layer_name=$(basename "$layer_dir")
        echo "  Processing layer: $layer_name"

        for locale_path in "$layer_dir/locales"/*.json; do
            if [ -f "$locale_path" ]; then
                locale_file=$(basename "$locale_path")
                link_name="$SYMLINK_DIR/$layer_name/$locale_file"

                mkdir -p "$(dirname "$link_name")"

                if [ -L "$link_name" ]; then
                    rm "$link_name"
                elif [ -e "$link_name" ]; then
                    echo "Error: Target exists and is not a symlink: $link_name"
                    continue
                fi

                target_rel=$(python3 -c "import os.path; print(os.path.relpath('$locale_path', '$SYMLINK_DIR/$layer_name'))")
                ln -s "$target_rel" "$link_name"
            fi
        done
    fi
done

echo "i18n symlinks created in $SYMLINK_DIR"
