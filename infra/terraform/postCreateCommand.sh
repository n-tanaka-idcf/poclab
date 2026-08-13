#!/bin/bash
set -euo pipefail

# Install misc commands
aqua install --config "$AQUA_CONFIG"

# Correct the ownership of directories
target_dir="/misc-volume"
sudo chown ${DEVCONTAINER_USER}:${DEVCONTAINER_USER} "$target_dir"

# Create sub directories
target_sub_dirs=(
  "bash"
  "gh"
)

for dir in "${target_sub_dirs[@]}"; do
    echo "Creating sub directory: ${target_dir}/${dir}"
    mkdir -p "${target_dir}/${dir}"
done
