#!/bin/bash

#mkdir -p $PREFIX/bin
#cp -R $SRC_DIR/* $PREFIX/bin/

# ===========================

BINARY=Trinity
BINARY_HOME=$PREFIX/bin
TRINITY_HOME=$PREFIX/bin/trinity-$PKG_VERSION

cd $SRC_DIR

#make

# remove the sample data
rm -rf $SRC_DIR/sample_data

# copy source to bin
mkdir -p $PREFIX/bin
mkdir -p $TRINITY_HOME
cp -R $SRC_DIR/* $TRINITY_HOME/
cd $TRINITY_HOME && chmod +x Trinity
cd $BINARY_HOME && ln -s trinity-$PKG_VERSION/Trinity $BINARY