#!/usr/bin/env bash
set -euo pipefail

# Always work from the script's own directory, wherever called from.
cd "$(dirname "$(readlink -f "$0")")"

# Configuration name is created in Phase 2's flake.nix.
PROFILE="costa"

echo "[1/3] Checking flake outputs..."
nix flake show .

echo "[2/3] Building the user activation package..."
nix build ".#homeConfigurations.${PROFILE}.activationPackage" --no-link

echo "[3/3] Activating Home Manager..."
home-manager switch --flake ".#${PROFILE}"

echo "Home Manager activation completed."
