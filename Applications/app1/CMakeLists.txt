
#------------------------------------------------------------------------------- 
# Component name 
#------------------------------------------------------------------------------- 
set(applicationName app1)


#------------------------------------------------------------------------------- 
# Definitions 
#------------------------------------------------------------------------------- 


#------------------------------------------------------------------------------- 
# Sources 
#------------------------------------------------------------------------------- 
set(include_path "${CMAKE_CURRENT_SOURCE_DIR}/Source")
set(source_path "${CMAKE_CURRENT_SOURCE_DIR}/Source")

set(include_files
#	${include_path}/app1.h
)

set(source_files
	${source_path}/app1.cpp
)


# Create named folders for the sources within the .vcproj
source_group("Include"  FILES ${include_files})
source_group("Source"   FILES ${source_files})


#------------------------------------------------------------------------------- 
# Create Library 
#------------------------------------------------------------------------------- 
add_executable(${applicationName}
    ${include_files}
    ${source_files}
)

#------------------------------------------------------------------------------- 
# Include directories
#------------------------------------------------------------------------------- 
target_include_directories(${applicationName}
    PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/Source

    PUBLIC


    INTERFACE
)


#------------------------------------------------------------------------------- 
# Dependencies to other libraries
#------------------------------------------------------------------------------- 
target_link_libraries(${applicationName} 
    PRIVATE

    PUBLIC 
    comp1

    INTERFACE
)


#------------------------------------------------------------------------------- 
# Compile definitions
#------------------------------------------------------------------------------- 
target_compile_definitions(${applicationName}
    PRIVATE

    PUBLIC
  
    INTERFACE
)


#------------------------------------------------------------------------------- 
# Compile options
#------------------------------------------------------------------------------- 
target_compile_options(${applicationName}
    PRIVATE

    PUBLIC

    INTERFACE

)

