#include "../include/WZE/WizardEngine.hpp" // IWYU pragma: keep

#include <cstdio> // IWYU pragma: keep

#undef main

using namespace wze;

auto main() -> int32_t {
    engine::init();

    timer::set_frametime(1000 / 60);

    window::open("", "", 16.0f / 9.0f);

    input::hide_cursor();
    input::set_mouse_sens(0.2);

    texture tex = load_texture("assets/wze/icon.png");

    while (engine::update()) {
        camera::set_x(camera::x() + input::mouse_x());
        camera::set_y(camera::y() + input::mouse_y());

        if (input::key(KEY_W)) {
            camera::set_z(camera::z() + 0.2f * timer::deltatime());
        } else if (input::key(KEY_S)) {
            camera::set_z(camera::z() - 0.2f * timer::deltatime());
        }

        camera::set_angle(camera::angle() + input::key(KEY_MOUSE_WHEEL) * 3);
    }

    return 0;
}
