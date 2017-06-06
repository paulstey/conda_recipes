#!/bin/bash

JAVA_PROG=`which java`
JAVA_BINDIR=`dirname $JAVA_PROG`
JAVA_HOME=`dirname $JAVA_BINDIR`

export PATH=$PREFIX/public_mm/bin:$PATH

#cd $PREFIX/public_mm

BASEDIR=$PREFIX/share/$PKG_NAME-$PKG_VERSION


mkdir -p $BASEDIR
cp -R $SRC_DIR  $BASEDIR
#cp -R * $BASEDIR

export BASEDIR
export JAVA_HOME

cd $BASEDIR/public_mm

rm $BASEDIR/public_mm/MedPost-SKR/src/gov

#mkdir -p $BASEDIR/public_mm/MedPost-SKR/src/gov/gov       # HACK: this is the worst

./bin/install.sh





###
# The version below generates the "/public_mm/MedPost-SKR/gov/gov not found" error
###
#JAVA_PROG=`which java`
#JAVA_BINDIR=`dirname $JAVA_PROG`
#JAVA_HOME=`dirname $JAVA_BINDIR` 

#export PATH=$PREFIX/public_mm/bin:$PATH

#BASEDIR=$PREFIX
#cp -R $SRC_DIR  $BASEDIR

#export BASEDIR
#export JAVA_HOME
#cd $BASEDIR/public_mm
#./bin/install.sh
