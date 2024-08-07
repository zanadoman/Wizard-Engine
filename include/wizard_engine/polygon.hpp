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

#ifndef WIZARD_ENGINE_POLYGON_HPP
#define WIZARD_ENGINE_POLYGON_HPP

#include <wizard_engine/component.hpp>
#include <wizard_engine/export.hpp>
#include <wizard_engine/math.hpp>

namespace wze {
/**
 * @file polygon.hpp
 * @author Zana Domán
 * @brief Convex polygon component.
 */
class polygon final : public component {
  private:
    std::vector<std::pair<float, float>> _shape;
    float _shape_radius;
    std::vector<std::pair<float, float>> _points;
    float _points_radius;
    float _x;
    float _y;
    float _angle;
    float _scale;
    std::array<float, 4> _transformation_matrix;
    float _x_offset;
    float _y_offset;
    float _angle_offset;
    bool _attach_x;
    bool _attach_y;
    bool _attach_angle;
    bool _x_angle_lock;
    bool _y_angle_lock;

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Updates the x positions of the points of the polygon.
     */
    void update_x();

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Updates the y positions of the points of the polygon.
     */
    void update_y();

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Returns the circumradius of the shape of the polygon.
     * @return Circumradius of the shape of the polygon.
     */
    [[nodiscard]] float circumradius() const;

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Returns the projection of the polygon on a vector.
     * @param vector Vector to project on.
     * @return Projection of the polygon on the vector.
     */
    [[nodiscard]] std::pair<float, float>
    project(std::pair<float, float> const& vector) const;

  public:
    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Returns the shape of the polygon.
     * @return Shape of the polygon.
     * @warning Shape should be convex with at least 3 vertices.
     */
    [[nodiscard]] std::vector<std::pair<float, float>> const& shape() const;

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Returns the radius of the shape of the polygon.
     * @return Radius of the shape of the polygon.
     */
    [[nodiscard]] float shape_radius() const;

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Returns the points of the polygon.
     * @return Points of the polygon.
     */
    [[nodiscard]] std::vector<std::pair<float, float>> const& points() const;

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Returns the radius of the points of the polygon.
     * @return Radius of the points of the polygon.
     */
    [[nodiscard]] float points_radius() const;

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Returns the x position of the polygon.
     * @return X position of the polygon.
     */
    [[nodiscard]] float x() const;

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Sets the x position of the polygon.
     * @param x X position of the polygon.
     */
    void set_x(float x) final;

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Returns the y position of the polygon.
     * @return Y position of the polygon.
     */
    [[nodiscard]] float y() const;

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Sets the y position of the polygon.
     * @param y Y position of the polygon.
     */
    void set_y(float y) final;

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Returns the angle of the polygon.
     * @return Angle of the polygon.
     */
    [[nodiscard]] float angle() const;

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Sets the angle of the polygon.
     * @param angle Angle of the polygon.
     */
    void set_angle(float angle) final;

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Returns the scale of the polygon.
     * @return Scale of the polygon.
     */
    [[nodiscard]] float scale() const;

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Sets the scale of the polygon.
     * @param scale Scale of the polygon.
     */
    void set_scale(float scale);

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Returns the transformation matrix of the polygon.
     * @return Transformation matrix of the polygon.
     */
    [[nodiscard]] std::array<float, 4> const& transformation_matrix() const;

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Returns the x offset of the polygon.
     * @return X offset of the polygon.
     */
    [[nodiscard]] float x_offset() const final;

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Sets the x offset of the polygon.
     * @param x_offset X offset of the polygon.
     */
    void set_x_offset(float x_offset);

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Returns the y offset of the polygon.
     * @return Y offset of the polygon.
     */
    [[nodiscard]] float y_offset() const final;

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Sets the y offset of the polygon.
     * @param y_offset Y offset of the polygon.
     */
    void set_y_offset(float y_offset);

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Returns the angle offset of the polygon.
     * @return Angle offset of the polygon.
     */
    [[nodiscard]] float angle_offset() const final;

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Sets the angle offset of the polygon.
     * @param angle_offset Angle offset of the polygon.
     */
    void set_angle_offset(float angle_offset);

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Returns whether the x position is attached to entities.
     * @return Whether the x position is attached to entities.
     */
    [[nodiscard]] bool attach_x() const final;

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Sets whether the x position is attached to entities.
     * @param attach_x Whether the x position is attached to entities.
     */
    void set_attach_x(bool attach_x);

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Returns whether the y position is attached to entities.
     * @return Whether the y position is attached to entities.
     */
    [[nodiscard]] bool attach_y() const final;

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Sets whether the y position is attached to entities.
     * @param attach_y Whether the y position is attached to entities.
     */
    void set_attach_y(bool attach_y);

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Returns whether the angle is attached to entities.
     * @return Whether the angle is attached to entities.
     */
    [[nodiscard]] bool attach_angle() const final;

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Sets whether the angle is attached to entities.
     * @param attach_angle Whether the angle is attached to entities.
     */
    void set_attach_angle(bool attach_angle);

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Returns whether the x position is affected by the angle.
     * @return Whether the x position is affected by the angle.
     */
    [[nodiscard]] bool x_angle_lock() const final;

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Sets whether the x position is affected by the angle.
     * @param x_angle_lock Whether the x position is affected by the angle.
     */
    void set_x_angle_lock(bool x_angle_lock);

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Returns whether the y position is affected by the angle.
     * @return Whether the y position is affected by the angle.
     */
    [[nodiscard]] bool y_angle_lock() const final;

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Sets whether the y position is affected by the angle.
     * @param y_angle_lock Whether the y position is affected by the angle.
     */
    void set_y_angle_lock(bool y_angle_lock);

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Constructs a polygon instance.
     * @param shape Shape of the polygon.
     * @param x X position of the polygon.
     * @param y Y position of the polygon.
     * @param angle Angle of the polygon.
     * @param scale Scale of the polygon.
     * @param x_offset X offset of the polygon.
     * @param y_offset Y offset of the polygon.
     * @param angle_offset Angle offset of the polygon.
     * @param attach_x Whether the x position is attached to entities.
     * @param attach_y Whether the y position is attached to entities.
     * @param attach_angle Whether the angle is attached to entities.
     * @param x_angle_lock Whether the x position is affected by the angle.
     * @param y_angle_lock Whether the y position is affected by the angle.
     * @warning Shape should be convex with at least 3 vertices.
     */
    explicit polygon(std::vector<std::pair<float, float>> const& shape =
                         {{0, 0}, {0, 0}, {0, 0}},
                     float x = 0, float y = 0, float angle = 0, float scale = 1,
                     float x_offset = 0, float y_offset = 0,
                     float angle_offset = 0, bool attach_x = true,
                     bool attach_y = true, bool attach_angle = true,
                     bool x_angle_lock = true, bool y_angle_lock = true);

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Returns whether a point is inside the polygon.
     * @param x X position of the point.
     * @param y Y position of the point.
     * @return Whether the point is inside the polygon.
     */
    [[nodiscard]] bool inside(float x, float y) const;

    /**
     * @file polygon.hpp
     * @author Zana Domán
     * @brief Returns the state of the collision with another polygon.
     * @param T Bool for simple overlap check, float for advanced depth check.
     * @param other Other polygon instance.
     * @return State of the collision with the other polygon.
     */
    template <typename T>
    [[nodiscard]] std::enable_if_t<
        std::is_same_v<T, bool> || std::is_same_v<T, float>, T>
    overlap(polygon const& other) const {
        polygon const* polygon1;
        polygon const* polygon2;
        T state;
        size_t i;
        std::vector<std::pair<float, float>>::const_iterator point1;
        std::vector<std::pair<float, float>>::const_iterator point2;
        std::pair<float, float> normal;
        std::pair<float, float> projection1;
        std::pair<float, float> projection2;

        if (points_radius() + other.points_radius() <
            math::length(other.x() - x(), other.y() - y())) {
            return std::is_same_v<T, bool> ? false : 0;
        }

        polygon1 = this;
        polygon2 = &other;
        state =
            std::is_same_v<T, bool> ? true : std::numeric_limits<float>::max();

        for (i = 0; i != 2; ++i) {
            for (point1 = polygon1->points().begin(),
                point2 = polygon1->points().begin() + 1;
                 point1 != polygon1->points().end(); ++point1, ++point2) {
                if (point2 == polygon1->points().end()) {
                    point2 = polygon1->points().begin();
                }

                normal = math::normal(point2->first - point1->first,
                                      point2->second - point1->second);
                if constexpr (std::is_same_v<T, float>) {
                    normal = std::apply(math::normalize, normal);
                }
                projection1 = polygon1->project(normal);
                projection2 = polygon2->project(normal);

                if (projection2.second < projection1.first ||
                    projection1.second < projection2.first) {
                    return std::is_same_v<T, bool> ? false : 0;
                }

                if constexpr (std::is_same_v<T, float>) {
                    state = std::min(
                        std::min(projection1.second, projection2.second) -
                            std::max(projection1.first, projection2.first),
                        state);
                }
            }

            polygon1 = &other;
            polygon2 = this;
        }

        return state;
    }
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_POLYGON_HPP */
