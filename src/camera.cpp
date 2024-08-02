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

#include <wizard_engine/camera.hpp>
#include <wizard_engine/math.hpp>

float wze::camera::_x;
float wze::camera::_y;
float wze::camera::_z;
float wze::camera::_angle;
std::array<float, 4> wze::camera::_transformation_matrix;
float wze::camera::_focus;

float wze::camera::x() {
    return _x;
}

void wze::camera::set_x(float x) {
    _x = x;
}

float wze::camera::y() {
    return _y;
}

void wze::camera::set_y(float y) {
    _y = y;
}

float wze::camera::z() {
    return _z;
}

void wze::camera::set_z(float z) {
    _z = z;
}

float wze::camera::angle() {
    return _angle;
}

void wze::camera::set_angle(float angle) {
    _angle = angle;
    _transformation_matrix = math::transformation_matrix(-camera::angle(), 1);
}

std::array<float, 4> const& wze::camera::transformation_matrix() {
    return _transformation_matrix;
}

float wze::camera::focus() {
    return _focus;
}

void wze::camera::set_focus(float focus) {
    _focus = focus;
}

void wze::camera::initialize() {
    set_x(0);
    set_y(0);
    set_z(0);
    set_angle(0);
    set_focus(std::numeric_limits<uint8_t>::max());
}

void wze::camera::project(renderable& instance) {
    float scale;
    float x;
    float y;

    if (!instance.spatial()) {
        instance.set_screen_area(
            {instance.x(), instance.y(), instance.width(), instance.height()});
        instance.set_screen_angle(instance.angle());
        return;
    }

    instance.set_screen_angle(instance.angle() - angle());

    if (instance.z() == z() || !(bool)focus()) {
        instance.set_screen_area({0, 0, 0, 0});
        return;
    }

    scale = focus() / (instance.z() - z());
    x = (instance.x() - camera::x()) * scale;
    y = (instance.y() - camera::y()) * scale;
    instance.set_screen_area({math::transform_x(x, y, transformation_matrix()),
                              math::transform_y(x, y, transformation_matrix()),
                              instance.width() * scale,
                              instance.height() * scale});
}

std::pair<float, float> wze::camera::project(float x, float y, float z) {
    float scale;

    if (z == camera::z() || !(bool)focus()) {
        return {0, 0};
    }

    scale = focus() / (z - camera::z());
    x = (x - camera::x()) * scale;
    y = (y - camera::y()) * scale;
    return {math::transform_x(x, y, transformation_matrix()),
            math::transform_y(x, y, transformation_matrix())};
}

std::pair<float, float> wze::camera::unproject(float x, float y, float z) {
    float determinant;
    float scale;

    if (z == camera::z() || !(bool)focus()) {
        return {0, 0};
    }

    determinant =
        transformation_matrix().at(0) * transformation_matrix().at(3) -
        transformation_matrix().at(1) * transformation_matrix().at(2);
    scale = (z - camera::z()) / focus();
    return {camera::x() + (x * transformation_matrix().at(3) -
                           y * transformation_matrix().at(1)) /
                              determinant * scale,
            camera::y() + (y * transformation_matrix().at(0) -
                           x * transformation_matrix().at(2)) /
                              determinant * scale};
}
