#!/bin/sh
make
mkdir -p $PREFIX/bin

binaries="\
bowtie2 \
bowtie2-align-l \
bowtie2-align-s \
bowtie2-build \
bowtie2-build-l \
bowtie2-build-s \
bowtie2-inspect \
bowtie2-inspect-l \
bowtie2-inspect-s \
"


for i in $binaries; do cp $i $PREFIX/bin && chmod +x $PREFIX/bin/$i; done


