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

#ifndef WIZARD_ENGINE_MATH_HPP
#define WIZARD_ENGINE_MATH_HPP

#include <wizard_engine/export.hpp>

namespace wze {
/**
 * @file math.hpp
 * @author Zana Domán, Gunics Roland
 * @brief Subsystem to handle 2D geometry and unit conversions.
 */
class math final {
  private:
    static std::mt19937_64 _mt19937_64;

    /**
     * @file math.hpp
     * @author Zana Domán
     * @brief Private default constructor to prevent instantiation.
     */
    math() = default;

  public:
    /**
     * @file math.hpp
     * @author Zana Domán
     * @brief Single precision epsilon.
     */
    [[nodiscard]] static constexpr float epsilon() {
        // NOLINTNEXTLINE(cppcoreguidelines-avoid-magic-numbers,readability-magic-numbers)
        return .01;
    }

    /**
     * @file math.hpp
     * @author Zana Domán
     * @brief Single precision PI.
     */
    [[nodiscard]] static constexpr float pi() {
        // NOLINTNEXTLINE(cppcoreguidelines-avoid-magic-numbers,readability-magic-numbers)
        return 3.1415927;
    }

#ifdef __WIZARD_ENGINE_INTERNAL__
    /**
     * @file math.hpp
     * @author Zana Domán
     * @brief Initializes the math subsystem.
     */
    static void initialize();
#endif /* __WIZARD_ENGINE_INTERNAL__ */

    /**
     * @file math.hpp
     * @author Zana Domán
     * @brief Returns a random integer value from an interval.
     * @param T Integral type.
     * @param minimum Minimum inclusive value of the interval.
     * @param maximum Maximum inclusive value of the interval.
     * @return Random integer value from the interval.
     */
    template <typename T>
    [[nodiscard]] static typename std::enable_if_t<std::is_integral_v<T>, T>
    random(T minimum = std::numeric_limits<T>::min(),
           T maximum = std::numeric_limits<T>::max()) {
        return std::uniform_int_distribution<T>(minimum, maximum)(_mt19937_64);
    }

    /**
     * @file math.hpp
     * @author Zana Domán
     * @brief Returns a random real value from an interval.
     * @param minimum Minimum inclusive value of the interval.
     * @param maximum Maximum inclusive value of the interval.
     * @return Random real value from the interval.
     */
    [[nodiscard]] static float
    random(float minimum = -std::numeric_limits<float>::max(),
           float maximum = std::numeric_limits<float>::max());

    /**
     * @file math.hpp
     * @author Zana Domán
     * @brief Returns a random boolean value.
     * @param T Boolean type.
     * @param probability Probability of a true value.
     * @return Random boolean value.
     */
    template <typename T>
    [[nodiscard]] static typename std::enable_if_t<std::is_same_v<T, bool>, T>
    random(float probability = (float)true / 2) {
        return std::bernoulli_distribution((double)probability)(_mt19937_64);
    }

    /**
     * @file math.hpp
     * @author Zana Domán
     * @brief Returns the length of a vector.
     * @param x X component of the vector.
     * @param y Y component of the vector.
     * @return Length of the vector.
     */
    [[nodiscard]] static float length(float x, float y);

    /**
     * @file math.hpp
     * @author Zana Domán
     * @brief Returns the angle of a vector.
     * @param x X component of the vector.
     * @param y Y component of the vector.
     * @return Angle of the vector.
     */
    [[nodiscard]] static float angle(float x, float y);

    /**
     * @file math.hpp
     * @author Zana Domán
     * @brief Moves the x component of a vector.
     * @param length Length of the movement.
     * @param angle Angle of the movement.
     * @return Moved x component of the vector.
     */
    [[nodiscard]] static float move_x(float length, float angle);

    /**
     * @file math.hpp
     * @author Zana Domán
     * @brief Moves the y component of a vector.
     * @param length Length of the movement.
     * @param angle Angle of the movement
     * @return Moved y component of the vector.
     */
    [[nodiscard]] static float move_y(float length, float angle);

    /**
     * @file math.hpp
     * @author Zana Domán
     * @brief Returns the normal vector of a vector.
     * @param x X component of the vector.
     * @param y Y component of the vector.
     * @return Normal vector of the vector.
     */
    [[nodiscard]] static constexpr std::pair<float, float> normal(float x,
                                                                  float y) {
        return {y, -x};
    }

    /**
     * @file math.hpp
     * @author Zana Domán, Gunics Roland
     * @brief Normalizes a vector.
     * @param x X component of the vector.
     * @param y Y component of the vector.
     * @return Normalized vector.
     */
    [[nodiscard]] static std::pair<float, float> normalize(float x, float y);

    /**
     * @file math.hpp
     * @author Zana Domán, Gunics Roland
     * @brief Creates a transformation matrix.
     * @param angle Angle of the transformation matrix.
     * @param scale Scale of the transformation matrix.
     * @return Created transformation matrix.
     */
    [[nodiscard]] static std::array<float, 4>
    transformation_matrix(float angle, float scale);

    /**
     * @file math.hpp
     * @author Zana Domán, Gunics Roland
     * @brief Transforms the x component of a vector.
     * @param x X component of the vector.
     * @param y Y component of the vector.
     * @param transformation_matrix Transformation matrix.
     * @return Transformed x component of the vector.
     */
    [[nodiscard]] static float
    transform_x(float x, float y,
                std::array<float, 4> const& transformation_matrix);

    /**
     * @file math.hpp
     * @author Zana Domán, Gunics Roland
     * @brief Transforms the y component of a vector.
     * @param x X component of the vector.
     * @param y Y component of the vector.
     * @param transformation_matrix Transformation matrix.
     * @return Transformed y component of the vector.
     */
    [[nodiscard]] static float
    transform_y(float x, float y,
                std::array<float, 4> const& transformation_matrix);

    /**
     * @file math.hpp
     * @author Zana Domán
     * @brief Converts degrees to radians.
     * @param degrees Angle in degrees.
     * @return Angle in radians.
     */
    [[nodiscard]] static constexpr float to_radians(float degrees) {
        // NOLINTNEXTLINE(cppcoreguidelines-avoid-magic-numbers,readability-magic-numbers)
        return degrees * pi() / 180;
    }

    /**
     * @file math.hpp
     * @author Zana Domán
     * @brief Converts radians to degrees.
     * @param radians Angle in radians.
     * @return Angle in degrees.
     */
    [[nodiscard]] static constexpr float to_degrees(float radians) {
        // NOLINTNEXTLINE(cppcoreguidelines-avoid-magic-numbers,readability-magic-numbers)
        return radians * 180 / pi();
    }
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_MATH_HPP */
