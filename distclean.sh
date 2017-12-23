#!/bin/bash

rm -rf build
find -type d -name "CMakeFiles" -exec rm -fr {} \;
find -type f -name "CMakeCache*" -exec rm  {} \;
find -type f -name "*.cmake" -exec rm  {} \;
find -type f -name "Makefile" -exec rm  {} \;

