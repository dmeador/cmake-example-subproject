# CMake version
cmake_minimum_required(VERSION 3.5)

# Declare project
project(project1)

# Set output directories
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/Binaries/Bin")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/Binaries/Lib") 
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/Binaries/Lib")


if(CMAKE_CXX_COMPILER_ID MATCHES "GNU")
      include(ProcessorCount)
      ProcessorCount(NPROC)
else()
endif()

# Project modules
add_subdirectory(Applications)
add_subdirectory(Components)
add_subdirectory(Packages)
