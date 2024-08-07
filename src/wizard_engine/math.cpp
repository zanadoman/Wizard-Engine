/*
  Wizard Engine
  Copyright (C) 2023-2024 Zana Domán

  This software is provided 'as-is', without any express or implied
  warranty. In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.
*/

// NOLINTNEXTLINE(bugprone-reserved-identifier,cert-dcl37-c,cert-dcl51-cpp)
#define __WIZARD_ENGINE_INTERNAL__

#include <wizard_engine/math.hpp>

// NOLINTNEXTLINE(cert-err58-cpp,cert-msc51-cpp,cert-msc32-c)
std::mt19937_64 wze::math::_mt19937_64 = {};

float wze::math::random(float minimum, float maximum) {
    return std::uniform_real_distribution<float>(minimum, maximum)(_mt19937_64);
}

void wze::math::initialize() {
    _mt19937_64 = std::mt19937_64(std::random_device()());
}

float wze::math::length(float x, float y) {
    return sqrtf(powf(x, 2) + powf(y, 2));
}

float wze::math::angle(float x, float y) {
    return (bool)x || (bool)y
               ? acosf(x / length(x, y)) * (float)(y < 0 ? -1 : 1)
               : 0;
}

float wze::math::move_x(float length, float angle) {
    return length * cosf(angle);
}

float wze::math::move_y(float length, float angle) {
    return length * sinf(angle);
}

std::pair<float, float> wze::math::normalize(float x, float y) {
    float length;

    if ((bool)x || (bool)y) {
        length = math::length(x, y);
        return {x / length, y / length};
    }

    return {0, 0};
}

std::array<float, 4> wze::math::transformation_matrix(float angle,
                                                      float scale) {
    float cosine_scale;
    float sine_scale;

    cosine_scale = cosf(angle) * scale;
    sine_scale = sinf(angle) * scale;

    return {cosine_scale, -sine_scale, sine_scale, cosine_scale};
}

float wze::math::transform_x(
    float x, float y, std::array<float, 4> const& transformation_matrix) {
    return x * transformation_matrix.at(0) + y * transformation_matrix.at(1);
}

float wze::math::transform_y(
    float x, float y, std::array<float, 4> const& transformation_matrix) {
    return x * transformation_matrix.at(2) + y * transformation_matrix.at(3);
}
