# C++ Ray Tracer Makefile

# Compiler and flags
CXX = g++
CXXFLAGS = -std=c++17 -Wall -Wextra -O3 -Iinclude

# Source files
SRCDIR = src
SOURCES = $(wildcard $(SRCDIR)/*.cpp)
OBJECTS = $(SOURCES:.cpp=.o)

# Target executable
TARGET = raytracer

# Default target
all: $(TARGET)

# Build the executable
$(TARGET): $(OBJECTS)
	$(CXX) $(OBJECTS) -o $(TARGET)

# Compile source files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean build files
clean:
	rm -f $(OBJECTS) $(TARGET)

# Run the ray tracer (outputs to stdout)
run: $(TARGET)
	./$(TARGET)

# Run and save output to file
render: $(TARGET)
	./$(TARGET) > output.ppm

# Install dependencies (macOS)
install-deps:
	brew install cmake

# Help target
help:
	@echo "Available targets:"
	@echo "  all      - Build the ray tracer"
	@echo "  clean    - Remove build files"
	@echo "  run      - Run the ray tracer (output to stdout)"
	@echo "  render   - Run and save output to output.ppm"
	@echo "  install-deps - Install CMake (macOS)"
	@echo ""
	@echo "Usage:"
	@echo "  make render    # Build and render to output.ppm"
	@echo "  ./raytracer > my_image.ppm  # Custom output file"

.PHONY: all clean run render install-deps help
