#!/bin/sh

set -e

[ -z "$ONYX_PATH" ] && echo "Please set ONYX_PATH before running this script." && exit 1

# Install packages
echo -e "\nInstalling packages"
onyx pkg sync

# Build the program
echo -e "\n\nBuilding the program"
onyx build -V -o protoc.wasm src/main.onyx

# Move to installation directory
echo -e "\n\nInstalling to $ONYX_PATH"
mv protoc.wasm $ONYX_PATH/tools/protoc.wasm

chmod +x protoc-gen-onyx
cp protoc-gen-onyx $ONYX_PATH/bin/protoc-gen-onyx

