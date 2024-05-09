#include "../inc/wizard.hpp" // IWYU pragma: keep

int32_t main(void) {
    wze::engine::init();

    wze::window::open("", "", 1920, 1080);

    wze::timer::set_frametime(1000 / 60);

    while (wze::engine::update()) {}

    return 0;
}
