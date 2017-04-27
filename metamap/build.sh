#!/bin/bash

tar -xvjf public_mm_linux_main_2016.tar.bz2
cd public_mm

export JAVA_HOME=/usr/bin
export PATH=$PREFIX/public_mm/bin:$PATH

./bin/install.sh
