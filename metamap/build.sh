#!/bin/bash

JAVA_BINDIR=dirname `which java`

JAVA_HOME=dirname $JAVA_BINDIR 

export PATH=$PREFIX/public_mm/bin:$PATH

#cd $PREFIX/public_mm

BASEDIR=$PREFIX/share
cp -R $SRC_DIR  $BASEDIR

export $BASEDIR
export $JAVA_HOME

cd $BASEDIR

./bin/install.sh





## last version
#!/bin/bash

#which java > $PREFIX/java_path.txt
#sed -i 's/\/bin\/java//' $PREFIX/java_path.txt

#export JAVA_HOME=`cat $PREFIX/java_path.txt`
#export PATH=$PREFIX/public_mm/bin:$PATH

##JAR=$PREFIX/jar
#SHARE_DIR=$PREFIX/share

# make a libexec directory
##mkdir -p $JAR

##cd $SRC_DIR
#cp -R $SRC_DIR $SHARE_DIR

#cd $SHARE_DIR

#./bin/install.sh
