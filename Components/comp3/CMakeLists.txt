
project (comp3)

include_directories(include)
 
#Generate the static library from the sources
add_library(${PROJECT_NAME} INTERFACE ${FILES})

target_include_directories( ${PROJECT_NAME}
    INTERFACE ${PROJECT_SOURCE_DIR}/include
)
