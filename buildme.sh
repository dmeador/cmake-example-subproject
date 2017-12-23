#!/bin/bash

[[ ! -d ./build ]] && mkdir ./build
pushd .
cd build
cmake .. 
make 
echo "Test APP2" 
Binaries/Bin/app2
echo -n "Total build files : " 
find -type f | wc -l 
echo "make clean" 
make clean
echo -n "Total build files after make clean : " 
find -type f | wc -l 
find
