#!/bin/bash


JULIA_VERSION=0.6
JULIA_PKG_NAME=Compat
DEST="$PREFIX/lib/julia/packages/v$JULIA_VERSION/$JULIA_PKG_NAME"

mkdir -p "$DEST"
cp --recursive --archive --no-target-directory "$PWD" "$DEST"
