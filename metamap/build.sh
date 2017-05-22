#!/bin/bash

#tar xvjf public_mm_linux_main_2016v2.tar.bz2

which java > $PREFIX/java_path.txt
sed -i 's/\/bin\/java//' $PREFIX/java_path.txt

export JAVA_HOME=`cat $PREFIX/java_path.txt`
export PATH=$PREFIX/public_mm/bin:$PATH

cd $PREFIX/public_mm

./bin/install.sh
