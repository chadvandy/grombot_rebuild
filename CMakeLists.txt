# minimum CMake version required
cmake_minimum_required(VERSION 3.15)
# Project name, version and description
project(Himbot VERSION 0.0.1 DESCRIPTION "It's a good thing he's pretty")

# Add CMake files from the /cmake folder.
list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
 
# Create an executable
add_executable(${PROJECT_NAME}
    src/main.cpp
    # your others files...
)

# Find our pre-installed DPP package (using FindDPP.cmake).
find_package(DPP REQUIRED)

# Link the pre-installed DPP package.
target_link_libraries(${PROJECT_NAME} 
    ${DPP_LIBRARIES}
)
    
# Include the DPP directories.
target_include_directories(${PROJECT_NAME} PRIVATE
    ${DPP_INCLUDE_DIR}
)

# add_subdirectory(libs/dpp)
# add_subdirectory(libs/spdlog)

# find_package(dpp REQUIRED)
# find_package(spdlog REQUIRED)
 
# Linking libraries
#target_link_libraries(${PROJECT_NAME}
#    dpp
    #spdlog # if you need a logger. Don't forget to clone sources
           # in the `libs/` directory
#)
 
# Specify includes
#target_include_directories(${PROJECT_NAME} PRIVATE
 #   libs/dpp/include
    #libs/spdlog/include # Like before, if you need spdlog
#)
 
# Set C++ version
set_target_properties(${PROJECT_NAME} PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED ON
)