
project (comp1)
# Create a library called "comp1" which includes the source file "comp1.cpp".
# The extension is already found. Any number of sources could be listed here.

#Bring the headers, such as comp1.h into the project
include_directories(include)
# Make sure the compiler can find include files for our comp1 library
# when other libraries or executables link to comp1

# the file(GLOB...) allows for wildcard additions:
file(GLOB SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/Source/*.cpp)

#set( SOURCES Source/comp1.cpp )
 
#Generate the static library from the sources
add_library(${PROJECT_NAME} STATIC ${SOURCES})

target_include_directories( ${PROJECT_NAME}
    PUBLIC ${PROJECT_SOURCE_DIR}/include
)
