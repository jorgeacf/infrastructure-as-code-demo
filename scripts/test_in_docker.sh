#!/usr/bin/env bash


set -euo pipefail
[ -n "${DEBUG:-}" ] && set -x

# Default container name. Only chars in [a-zA-Z0-9_.-] are allowed.
timestamp="$(date +%Y-%m-%dT%H.%M.%S_%Z)"

# Allow environment variables to override defaults.
container_id=${container_id:-$timestamp}

# Run the container using the supplied OS.
printf ${purple}"Starting Docker container: .\n\n"${neutral}
docker pull fedora:latest