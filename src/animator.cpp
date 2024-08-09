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

#define __WIZARD_ENGINE_INTERNAL

#include <wizard_engine/animator.hpp>
#include <wizard_engine/timer.hpp>

std::vector<std::pair<std::shared_ptr<wze::texture>, uint16_t>> const&
wze::animator::frames() const {
    return _frames;
}

size_t wze::animator::current_frame() const {
    return _current_frame;
}

void wze::animator::set_current_frame(size_t current_frame) {
    _current_frame = current_frame;
}

std::vector<std::weak_ptr<wze::animatable>> const&
wze::animator::targets() const {
    return _targets;
}

std::vector<std::weak_ptr<wze::animatable>>& wze::animator::targets() {
    return _targets;
}

bool wze::animator::reversed() const {
    return _reversed;
}

wze::animator::animator(
    std::vector<std::pair<std::shared_ptr<texture>, uint16_t>> const& frames,
    std::vector<std::weak_ptr<animatable>> const& targets) {
    _frames = frames;
    set_current_frame(0);
    _remaining_time = 0;
    this->targets() = targets;
    _reversed = false;
}

bool wze::animator::play() {
    uint64_t elapsed_time;
    bool looped;
    std::vector<std::weak_ptr<animatable>>::iterator iterator;
    std::shared_ptr<animatable> instance;

    if (!frames().size()) {
        return false;
    }

    if (frames().at(current_frame()).second) {
        elapsed_time = timer::delta_time() + _remaining_time;
        set_current_frame(current_frame() +
                          elapsed_time / frames().at(current_frame()).second);
        _remaining_time = elapsed_time % frames().at(current_frame()).second;
    } else {
        set_current_frame(current_frame() + 1);
        _remaining_time = 0;
    }

    if ((looped = frames().size() <= current_frame())) {
        set_current_frame(current_frame() % frames().size());
    }

    for (iterator = targets().begin(); iterator != targets().end();
         ++iterator) {
        if ((instance = iterator->lock())) {
            if (instance->animated()) {
                instance->set_texture(frames().at(current_frame()).first);
            }
        } else {
            targets().erase(iterator--);
        }
    }

    return looped;
}

void wze::animator::reset() {
    set_current_frame(0);
    _remaining_time = 0;
}

void wze::animator::reverse() {
    std::ranges::reverse(_frames);
    _reversed = !reversed();
}
