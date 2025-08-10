# C++ Ray Tracer

A ray tracing engine I built in C++17 to learn computer graphics and advanced C++ programming. This project implements a complete ray tracer with various materials, lighting effects, and scene objects.

## Features

- **Material System:**
  - Lambertian (diffuse) materials for matte surfaces
  - Metal materials with adjustable fuzziness
  - Dielectric (glass) materials with realistic refraction
  - Custom color support for all materials

- **Rendering Features:**
  - Anti-aliasing with multiple samples per pixel
  - Depth of field effects for realistic camera simulation
  - Ray bouncing with configurable depth limits
  - Gamma correction for accurate color representation

- **Scene Objects:**
  - Spheres with different materials
  - Ground plane
  - Random scene generation

- **Camera:**
  - Configurable field of view
  - Depth of field with aperture control
  - Flexible positioning

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
│   ├── material.h         # Material system
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

### Requirements

- CMake 3.16 or higher
- C++17 compatible compiler (GCC 7+, Clang 5+, or MSVC 2017+)

### Build Steps

1. **Create build directory:**
   ```bash
   mkdir build
   cd build
   ```

2. **Configure with CMake:**
   ```bash
   cmake ..
   ```

3. **Build:**
   ```bash
   make
   ```

4. **Run:**
   ```bash
   ./bin/raytracer > output.ppm
   ```

## How to Use

The ray tracer outputs a PPM image file. To save the output:

```bash
./bin/raytracer > my_render.ppm
```

## Configuration

You can modify the rendering parameters in `src/main.cpp`:

- `image_width`: Output image width (default: 1200)
- `samples_per_pixel`: Anti-aliasing samples (default: 500)
- `max_depth`: Maximum ray bounce depth (default: 50)
- Camera position and settings
- Scene composition

## Rendering Features

### Materials

1. **Lambertian (Diffuse):** Matte surfaces that scatter light in all directions
2. **Metal:** Reflective surfaces with optional fuzziness for realistic metal appearance
3. **Dielectric (Glass):** Transparent materials with realistic refraction and reflection