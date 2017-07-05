#!/bin/bash

JULIA_PKG_NAME="HDF5"
JULIA_VERSION=0.6
DEST="$PREFIX/lib/julia/packages/v$JULIA_VERSION/$JULIA_PKG_NAME"

mkdir -p "$DEST"
cp --archive --no-target-directory "$PWD" "$DEST"

julia -e "Pkg.build(\"$JULIA_PKG_NAME\")"
