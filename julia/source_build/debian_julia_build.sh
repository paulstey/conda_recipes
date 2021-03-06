#!/bin/bash

sudo apt-get install -y m4 patch cmake gfortran git openssl xz-utils pkg-config libssl-dev

export OPENBLAS_DYNAMIC_ARCH=0
export OPENBLAS_NO_AVX2=1

cd
mkdir -p software/build
cd software/build

cd https://github.com/JuliaLang/julia/releases/download/v0.5.1/julia-0.5.1-full.tar.gz 
tar -xvf julia-0.5.1-full.tar.gz 
cd julia-0.5.1

make 
