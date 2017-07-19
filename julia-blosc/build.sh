#!/bin/bash

JULIA_PKG_NAME="Blosc"
JULIA_VERSION=0.6
DEST="$PREFIX/lib/julia/packages/v$JULIA_VERSION/$JULIA_PKG_NAME"

mkdir -p "$DEST"
cp --archive --no-target-directory "$PWD" "$DEST"

# Set up julia package directory so BinDeps is found
export JULIA_PKGDIR="$PREFIX/lib/julia/packages/"
julia -e "Pkg.init()"

# Run build script
cd "$DEST/deps/"
julia build.jl

julia -e "Pkg.resolve()"
