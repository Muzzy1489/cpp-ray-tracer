cmake_minimum_required(VERSION 3.16)
project(RayTracer VERSION 1.0.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Set compiler flags
if(MSVC)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /W4")
else()
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -O3")
endif()

# Find required packages
find_package(PkgConfig REQUIRED)

# Add source files
set(SOURCES
    src/main.cpp
    src/ray.cpp
    src/vec3.cpp
    src/camera.cpp
    src/material.cpp
    src/hittable.cpp
    src/sphere.cpp
    src/hittable_list.cpp
    src/random.cpp
)

# Create executable
add_executable(raytracer ${SOURCES})

# Include directories
target_include_directories(raytracer PRIVATE include)

# Link libraries
target_link_libraries(raytracer)

# Set output directory
set_target_properties(raytracer PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin
)
