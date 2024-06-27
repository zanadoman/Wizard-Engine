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

#define WZE_INTERNAL

#include <wizard_engine/assets.hpp>
#include <wizard_engine/engine.hpp>
#include <wizard_engine/input.hpp>
#include <wizard_engine/render.hpp>
#include <wizard_engine/sprite.hpp>
#include <wizard_engine/timer.hpp>
#include <wizard_engine/window.hpp>

std::vector<SDL_Event> wze::engine::_events = {};

void wze::engine::intro() {
    std::shared_ptr<sprite> logo;
    float_t opacity;

    logo = sprite::create(
        0.f, 0.f, 0.f, 0.f, window::height() / 2.f, window::height() / 2.f,
        false,
        assets::create_texture(assets::load_image("./assets/wze/logo.png")));
    renderer::instances().push_back(logo);

    opacity = 0.f;
    while (opacity <= 255.f) {
        logo->set_color_a(opacity);
        if (!update()) {
            return;
        }
        opacity += 0.1f * timer::delta_time();
    }

    opacity = 255.f;
    while (0.f <= opacity) {
        logo->set_color_a(opacity);
        if (!update()) {
            return;
        }
        opacity -= 0.1f * timer::delta_time();
    }
}

std::vector<SDL_Event> const& wze::engine::events() {
    return _events;
}

void wze::engine::init(uint16_t width, uint16_t height) {
    if (SDL_Init(SDL_INIT_EVERYTHING)) {
        throw std::runtime_error(SDL_GetError());
    }
    if (!Mix_Init(MIX_INIT_FLAC | MIX_INIT_MOD | MIX_INIT_MP3 | MIX_INIT_OGG |
                  MIX_INIT_MID | MIX_INIT_OPUS | MIX_INIT_WAVPACK)) {
        throw std::runtime_error(Mix_GetError());
    }
    if (Mix_OpenAudio(MIX_DEFAULT_FREQUENCY, MIX_DEFAULT_FORMAT,
                      MIX_DEFAULT_CHANNELS, 2048)) {
        throw std::runtime_error(Mix_GetError());
    }
    if (TTF_Init()) {
        throw std::runtime_error(TTF_GetError());
    }

    window::init(width, height);
    renderer::init();
    input::init();

    intro();
}

bool wze::engine::update() {
    SDL_Event event;

    renderer::update();
    timer::update();

    _events.clear();
    while (SDL_PollEvent(&event)) {
        if (event.type == SDL_QUIT) {
            return false;
        }
        _events.push_back(event);
    }

    input::update();

    return true;
}
