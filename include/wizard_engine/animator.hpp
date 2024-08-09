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

#ifndef WIZARD_ENGINE_ANIMATOR_HPP
#define WIZARD_ENGINE_ANIMATOR_HPP

#include <wizard_engine/animatable.hpp>
#include <wizard_engine/assets.hpp>
#include <wizard_engine/export.hpp>

namespace wze {
/**
 * @file animator.hpp
 * @author Zana Domán
 * @brief Animates animatable objects.
 */
class animator final {
  private:
    std::vector<std::pair<std::shared_ptr<texture>, uint16_t>> _frames;
    size_t _current_frame;
    uint16_t _remaining_time;
    std::vector<std::weak_ptr<animatable>> _targets;
    bool _reversed;

  public:
    /**
     * @file animator.hpp
     * @author Zana Domán
     * @brief Returns the frame pool of the animation.
     * @return Frame pool of the animation.
     */
    std::vector<std::pair<std::shared_ptr<texture>, uint16_t>> const&
    frames() const;

    /**
     * @file animator.hpp
     * @author Zana Domán
     * @brief Returns the current frame of the animation.
     * @return Current frame of the animation.
     */
    size_t current_frame() const;

    /**
     * @file animator.hpp
     * @author Zana Domán
     * @brief Sets the current frame of the animation.
     * @param current_frame Current frame of the animation.
     */
    void set_current_frame(size_t current_frame);

    /**
     * @file animator.hpp
     * @author Zana Domán
     * @brief Returns the targets of the animation.
     * @return Targets of the animation.
     */
    std::vector<std::weak_ptr<animatable>> const& targets() const;

    /**
     * @file animator.hpp
     * @author Zana Domán
     * @brief Returns the targets of the animation.
     * @return Targets of the animation.
     */
    std::vector<std::weak_ptr<animatable>>& targets();

    /**
     * @file animator.hpp
     * @author Zana Domán
     * @brief Returns the direction of the frames of the animation.
     * @return Direction of the frames of the animation.
     */
    bool reversed() const;

    /**
     * @file animator.hpp
     * @author Zana Domán
     * @brief Constructs an animator instance.
     * @param frames Frame pool of the animation.
     * @param frame_time Frame time of the animation in milliseconds.
     * @param targets Targets of the animation.
     */
    animator(std::vector<std::pair<std::shared_ptr<texture>, uint16_t>> const&
                 frames = {},
             std::vector<std::weak_ptr<animatable>> const& targets = {});

    /**
     * @file animator.hpp
     * @author Zana Domán
     * @brief Animates the targets and erases expired ones, then returns whether
     * the animation is looped or not.
     * @return Whether the animation is looped or not.
     * @note You need to call this function in every frame to progress the
     * animation.
     */
    bool play();

    /**
     * @file animator.hpp
     * @author Zana Domán
     * @brief Resets the animation.
     */
    void reset();

    /**
     * @file animator.hpp
     * @author Zana Domán
     * @brief Reverses the frame pool of the animation.
     */
    void reverse();
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_ANIMATOR_HPP */
