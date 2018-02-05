#!/bin/bash
rm -rf build && mkdir build && cd build

cmake -L -DCMAKE_BUILD_TYPE="Release" -DBUILD_TESTING=OFF -DSUPERNOVA=OFF -DNATIVE=ON -DSC_WII=OFF -DSC_IDE=OFF -DSC_QT=OFF -DSC_ED=OFF -DSC_EL=OFF -DSC_VIM=ON ..

make -j 4 && sudo make install
