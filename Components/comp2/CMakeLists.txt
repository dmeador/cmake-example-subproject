
project (comp2)
# Create a library called "comp2" which includes the source file "comp2.cpp".

#Bring the headers, such as comp2.h into the project
include_directories(include)
# Make sure the compiler can find include files for our comp2 library
# when other libraries or executables link to comp2

# file(GLOB...) allows for wildcard additions:
file(GLOB SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/Source/*.cpp)

#set( SOURCES Source/comp2.cpp )
 
#Generate the static library from the sources
add_library(${PROJECT_NAME} STATIC ${SOURCES})

target_include_directories( ${PROJECT_NAME}
    PUBLIC ${PROJECT_SOURCE_DIR}/include
)
