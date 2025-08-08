#!/bin/bash

# C++ Ray Tracer Build Script

echo "Building C++ Ray Tracer..."

# Create build directory if it doesn't exist
if [ ! -d "build" ]; then
    echo "Creating build directory..."
    mkdir build
fi

# Navigate to build directory
cd build

# Configure with CMake
echo "Configuring with CMake..."
cmake ..

# Check if CMake configuration was successful
if [ $? -ne 0 ]; then
    echo "CMake configuration failed!"
    exit 1
fi

# Build the project
echo "Building project..."
make

# Check if build was successful
if [ $? -ne 0 ]; then
    echo "Build failed!"
    exit 1
fi

echo "Build successful!"
echo "Executable created at: build/bin/raytracer"
echo ""
echo "To run the ray tracer:"
echo "  cd build"
echo "  ./bin/raytracer > output.ppm"
echo ""
echo "To view the output, you can:"
echo "  - Use an image viewer that supports PPM format"
echo "  - Convert to PNG: convert output.ppm output.png"
