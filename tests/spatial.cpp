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

#include <wizard_engine/wizard_engine.hpp>

constexpr size_t sprite_count = 1000;
constexpr float sprite_spread = 2000;
constexpr float sprite_size = 100;
constexpr float movement_speed = .5;
constexpr float rotation_speed = .002;
constexpr float circle = 360;

wze_main(1920, 1080) {
    std::shared_ptr<wze::texture> texture;
    std::vector<wze::sprite> sprites;
    wze::speaker speaker;
    size_t i;

    texture = wze::assets::create_texture(
        wze::assets::load_image("./assets/wizard_engine/icon.png"));

    for (i = 0; i != sprite_count; ++i) {
        sprites.emplace_back(
            wze::math::random(-sprite_spread, sprite_spread),
            wze::math::random(-sprite_spread, sprite_spread),
            wze::math::random(-sprite_spread, sprite_spread),
            wze::math::to_radians(wze::math::random(0, circle)), sprite_size,
            sprite_size, true, texture);
    }

    speaker = wze::speaker(wze::assets::load_sound("./assets/tests/sound.wav"),
                           std::numeric_limits<int8_t>::max(),
                           std::numeric_limits<uint16_t>::max(), true,
                           std::numeric_limits<int16_t>::max(), 0, 0, true);
    speaker.play(0, std::numeric_limits<uint16_t>::max());

    wze_while(true) {
        if (wze::input::key(wze::KEY_W) && !wze::input::key(wze::KEY_S)) {
            wze::camera::set_z(wze::camera::z() +
                               movement_speed * wze::timer::delta_time());
        } else if (wze::input::key(wze::KEY_S) &&
                   !wze::input::key(wze::KEY_W)) {
            wze::camera::set_z(wze::camera::z() -
                               movement_speed * wze::timer::delta_time());
        }
        if (wze::input::key(wze::KEY_D) && !wze::input::key(wze::KEY_A)) {
            wze::camera::set_x(wze::camera::x() +
                               movement_speed * wze::timer::delta_time());
        } else if (wze::input::key(wze::KEY_A) &&
                   !wze::input::key(wze::KEY_D)) {
            wze::camera::set_x(wze::camera::x() -
                               movement_speed * wze::timer::delta_time());
        }
        if (wze::input::key(wze::KEY_SPACE) &&
            !wze::input::key(wze::KEY_LSHIFT)) {
            wze::camera::set_y(wze::camera::y() -
                               movement_speed * wze::timer::delta_time());
        } else if (wze::input::key(wze::KEY_LSHIFT) &&
                   !wze::input::key(wze::KEY_SPACE)) {
            wze::camera::set_y(wze::camera::y() +
                               movement_speed * wze::timer::delta_time());
        }
        if (wze::input::key(wze::KEY_MOUSE_RIGHT) &&
            !wze::input::key(wze::KEY_MOUSE_LEFT)) {
            wze::camera::set_angle(wze::camera::angle() +
                                   rotation_speed * wze::timer::delta_time());
        } else if (wze::input::key(wze::KEY_MOUSE_LEFT) &&
                   !wze::input::key(wze::KEY_MOUSE_RIGHT)) {
            wze::camera::set_angle(wze::camera::angle() -
                                   rotation_speed * wze::timer::delta_time());
        }
    }

    return 0;
}
