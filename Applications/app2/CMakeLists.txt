
#------------------------------------------------------------------------------- 
# Component name 
#------------------------------------------------------------------------------- 
set(applicationName app2)


#------------------------------------------------------------------------------- 
# Sources 
#------------------------------------------------------------------------------- 
#set(include_path "${CMAKE_CURRENT_SOURCE_DIR}/include")
set(source_path "${CMAKE_CURRENT_SOURCE_DIR}/Source")

set(include_files
	#${include_path}/app2.h
)

set(source_files
	${source_path}/app2.cpp
)

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
    comp2
    comp3

    INTERFACE
)

