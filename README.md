# C++ Ray Tracer

A modern, feature-rich ray tracing engine written in C++17. This project implements a complete ray tracer with support for various materials, lighting effects, and scene objects.

## Features

- **Multiple Material Types:**
  - Lambertian (diffuse) materials
  - Metal materials with configurable fuzziness
  - Dielectric (glass) materials with realistic refraction
  - Support for custom albedo colors

- **Advanced Rendering:**
  - Anti-aliasing with configurable samples per pixel
  - Depth of field effects
  - Ray bouncing with configurable depth limits
  - Gamma correction for realistic color output

- **Scene Objects:**
  - Spheres with various materials
  - Ground plane
  - Random scene generation with multiple objects

- **Camera System:**
  - Configurable field of view
  - Depth of field with aperture control
  - Flexible positioning and orientation

## Project Structure

```
C++ Project/
├── CMakeLists.txt          # Build configuration
├── include/                # Header files
│   ├── vec3.h             # 3D vector and color utilities
│   ├── ray.h              # Ray class definition
│   ├── hittable.h         # Abstract base for scene objects
│   ├── sphere.h           # Sphere object implementation
│   ├── hittable_list.h    # Container for multiple objects
│   ├── material.h         # Material system (diffuse, metal, glass)
│   └── camera.h           # Camera with depth of field
├── src/                   # Source files
│   ├── main.cpp           # Main application and scene setup
│   ├── vec3.cpp           # Vector utility implementations
│   ├── ray.cpp            # Ray class implementations
│   ├── sphere.cpp         # Sphere intersection calculations
│   ├── hittable_list.cpp  # Object list management
│   ├── camera.cpp         # Camera implementations
│   ├── material.cpp       # Material implementations
│   └── random.cpp         # Random number generation
└── README.md              # This file
```

## Building the Project

### Prerequisites

- CMake 3.16 or higher
- C++17 compatible compiler (GCC 7+, Clang 5+, or MSVC 2017+)

### Build Instructions

1. **Create build directory:**
   ```bash
   mkdir build
   cd build
   ```

2. **Configure with CMake:**
   ```bash
   cmake ..
   ```

3. **Build the project:**
   ```bash
   make
   ```
   Or on Windows:
   ```bash
   cmake --build .
   ```

4. **Run the ray tracer:**
   ```bash
   ./bin/raytracer > output.ppm
   ```
## Acknowledgments

This ray tracer is inspired by the "Ray Tracing in One Weekend" series and implements modern C++ practices for educational and practical use.
