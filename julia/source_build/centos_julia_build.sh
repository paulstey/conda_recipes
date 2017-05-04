#!/bin/bash

sudo yum install -y
    m4 \
    patch \
    cmake \
    libgfortran \
    git

export OPENBLAS_DYNAMIC_ARCH=0
export OPENBLAS_NO_AVX2=1

cd
mkdir -p software/build
cd software/build

cd https://github.com/JuliaLang/julia/releases/download/v0.5.1/julia-0.5.1-full.tar.gz 
tar -xvf julia-0.5.1-full.tar.gz 
cd julia-0.5.1

make 
