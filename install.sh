#!/bin/bash

set -e

REPO="vman-envs/vman-cli-releases"
VERSION="v0.0.1"

# Determine the OS and architecture
OS=$(uname -s | tr '[:upper:]' '[:lower:]')
ARCH=$(uname -m)

if [ "$ARCH" == "x86_64" ]; then
  ARCH="amd64"
fi

# Download the binary
URL="https://github.com/$REPO/releases/download/$VERSION/vman-$OS-$ARCH"
curl -L -o vman "$URL"

# Make the binary executable
chmod +x vman

# Move the binary to a directory in your PATH
sudo mv vman /usr/local/bin/

echo "vman installed successfully!"