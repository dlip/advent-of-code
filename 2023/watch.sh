#!/usr/bin/env bash
set -euo pipefail

echo "$1" | entr -c nvim -l "$1"
