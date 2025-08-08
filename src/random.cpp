#include "vec3.h"
#include <random>

// Global random number generator
static std::random_device rd;
static std::mt19937 gen(rd());
static std::uniform_real_distribution<double> dis(0.0, 1.0);

double random_double() {
    return dis(gen);
}

double random_double(double min, double max) {
    return min + (max-min)*random_double();
}
