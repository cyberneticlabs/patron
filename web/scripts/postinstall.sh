#!/bin/bash
# Postinstall script that handles pnpm's ignored builds issue.
# nuxt prepare internally calls pnpm install, which fails with
# [ERR_PNPM_IGNORED_BUILDS] in strict mode. This script works around it.

set -e

echo "Installing dependencies..."
pnpm install --dangerously-allow-all-builds --ignore-scripts

echo "Preparing Nuxt types..."
pnpm exec nuxt prepare
