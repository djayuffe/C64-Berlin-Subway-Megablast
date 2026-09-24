#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p build
cd src
acme -f cbm -o ../build/exotic_megablast_v45.prg subway.s
echo "built: mega/build/exotic_megablast_v45.prg"
