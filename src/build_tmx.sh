#!/bin/bash -eu

export CC=gcc
export CXX=g++

pushd /home/V2X-Hub/src/tmx
cmake -B build -DSAEJ2735_SPEC_VERSION=2016\
    -DCMAKE_PREFIX_PATH="/usr/local/share/tmx;/opt/carma/cmake" -DCMAKE_CXX_FLAGS="-DBOOST_BIND_GLOBAL_PLACEHOLDERS" -DCMAKE_C_FLAGS="-DBOOST_BIND_GLOBAL_PLACEHOLDERS"  -DCMAKE_BUILD_TYPE=Debug
cmake --build build -j8 
cmake --install build
ldconfig
popd
