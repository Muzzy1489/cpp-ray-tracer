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

## Usage

The ray tracer outputs a PPM image file to stdout. To save the output:

```bash
./bin/raytracer > my_render.ppm
```

You can view the PPM file using:
- Image viewers that support PPM format
- Online PPM viewers
- Convert to other formats using ImageMagick: `convert my_render.ppm my_render.png`

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

### Lighting

- Ambient lighting from sky gradient
- Realistic light scattering and absorption
- Support for multiple light bounces
- Proper energy conservation

### Anti-aliasing

- Multi-sample anti-aliasing reduces jagged edges
- Configurable sample count for quality vs. speed trade-off

## Performance

Rendering time depends on:
- Image resolution
- Samples per pixel
- Scene complexity
- Maximum ray depth

Typical render times on modern hardware:
- 1200x675, 500 samples: 5-15 minutes
- 800x450, 100 samples: 1-3 minutes

## Extending the Project

The modular design makes it easy to add new features:

- **New Shapes:** Implement the `hittable` interface
- **New Materials:** Extend the `material` base class
- **New Effects:** Modify the `ray_color` function
- **Scene Loading:** Add file format support for scene descriptions

## License

This project is open source and available under the MIT License.

## Acknowledgments

This ray tracer is inspired by the "Ray Tracing in One Weekend" series and implements modern C++ practices for educational and practical use.