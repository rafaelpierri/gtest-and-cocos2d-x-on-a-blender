#!/bin/bash

#This script modifies a default cocos2d-x v3.0 project and includes GoogleTest
#v1.7.0 features and some code examples.

#All thanks dmonopoly work: https://github.com/dmonopoly/gtest-cmake-example

###############################################################################
# Setting some variables
###############################################################################

export GTEST=gtest-1.7.0.zip

###############################################################################
echo "Installing GoogleTest on this project"
###############################################################################

mkdir lib
cd lib
wget https://googletest.googlecode.com/files/${GTEST}
unzip ${GTEST}
rm ${GTEST}
touch CMakeLists.txt
cd ..

###############################################################################
echo "Creating \"Tests\" directories & example"
###############################################################################

mkdir Tests
cd Tests
wget -O test_project1.cpp http://pastebin.com/raw.php?i=J08y0VL3
cd ..

###############################################################################
echo "Creating code examples on \"Classes\" directory"
###############################################################################

cd Classes
wget -O project1.cpp http://pastebin.com/raw.php?i=ayqkv4KF
wget -O project1.h http://pastebin.com/raw.php?i=mQCXtT3E
cd ..

###############################################################################
echo "Overriding cocos' default CMakeLists.txt"
###############################################################################

wget -O CMakeLists.txt http://pastebin.com/raw.php?i=hMHEwbhZ

