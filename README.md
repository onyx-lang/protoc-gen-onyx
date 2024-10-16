# Protobuf Generator for Onyx

A [Protobuf](https://protobuf.dev) compiler plugin for Onyx, to be used with the official [protobuf](https://github.com/onyx-lang/pkg-protobuf) package.

## Installation

On Linux, WSL and MacOS, use the `./install.sh` script to install `protoc-gen-onyx` onto your system.

This script will do 4 things:

- Install dependencies of this project.
- Build the project from scratch into `protoc.wasm`.
- Move the `protoc.wasm` file into `ONYX_PATH/tools/protoc.wasm`.
    - This makes `onyx protoc` a valid command.
- Make `protoc-gen-onyx` executable and copy it to `ONYX_PATH/bin/protoc-gen-onyx` for `protoc` to find it.
    - This assumes that `ONYX_PATH/bin` is in your `PATH`.

## Usage

See the [protobuf package README](https://github.com/onyx-lang/pkg-protobuf) for example usage.
