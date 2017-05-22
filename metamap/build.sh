#!/bin/bash

tar xvjf public_mm_linux_main_2016.tar.bz2

which java > java_path.txt
sed -i 's/\/bin\/java//' java_path.txt

export JAVA_HOME=`cat java_path.txt`
export PATH=$PREFIX/public_mm/bin:$PATH

cd public_mm

./bin/install.sh
