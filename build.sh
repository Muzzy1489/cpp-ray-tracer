#!/bin/bash

# My C++ Ray Tracer build script
# This script builds the project using CMake

echo "Building C++ Ray Tracer..."

# Create build directory if it doesn't exist
if [ ! -d "build" ]; then
    echo "Creating build directory..."
    mkdir build
fi

cd build

# Configure with CMake
echo "Configuring with CMake..."
cmake ..

# Build the project
echo "Building project..."
make

echo "Build complete! Run with: ./bin/raytracer"
