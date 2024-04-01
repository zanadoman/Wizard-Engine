/*
 * This file is part of Wizard Engine (https://github.com/zanadoman/Wizard-Engine).
 * Copyright (c) 2024 Zana Domán.
 *
 * Wizard Engine is free software: you can redistribute it and/or modify  
 * it under the terms of the GNU General Public License as published by  
 * the Free Software Foundation, version 3.
 *
 * Wizard Engine is distributed in the hope that it will be useful, but 
 * WITHOUT ANY WARRANTY; without even the implied warranty of 
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU 
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License 
 * along with Wizard Engine. If not, see https://www.gnu.org/licenses/licenses.html.
 */

#include "collision.h"

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

#define BUFF_SIZE 100

typedef struct ColliderBox box_t;

typedef enum
{
    DIR_NONE = 0b0000,
    DIR_TOP = 0b0001,
    DIR_BOT = 0b0010,
    DIR_LEFT = 0b0100,
    DIR_RIGHT = 0b1000,
    DIR_TOP_LEFT = DIR_TOP | DIR_LEFT,
    DIR_TOP_RIGHT = DIR_TOP | DIR_RIGHT,
    DIR_BOT_LEFT = DIR_BOT | DIR_LEFT,
    DIR_BOT_RIGHT = DIR_BOT | DIR_RIGHT,
} dir_t;

bool ValidateCollision(const box_t *box1, const box_t *box2)
{
    // Invalid if box1 currently not colliding with box2

    if (box1->cur_br_x <= box2->cur_tl_x || box2->cur_br_x <= box1->cur_tl_x ||
        box1->cur_tl_y <= box2->cur_br_y || box2->cur_tl_y <= box1->cur_br_y)
    {
        return false;
    }

    // Invalid if box1 previously collided with box2

    if (box1->prv_br_x <= box2->prv_tl_x || box2->prv_br_x <= box1->prv_tl_x ||
        box1->prv_tl_y <= box2->prv_br_y || box2->prv_tl_y <= box1->prv_br_y)
    {
        return true;
    }

    return false;
}

dir_t GetDirection(const box_t *box1, const box_t *box2)
{
    float h_diff, v_diff;

    if (ValidateCollision(box1, box2))
    {
        // Orthogonal collision

        if (box2->cur_tl_x < box1->prv_br_x && box1->prv_tl_x < box2->cur_br_x)
        {
            if (box1->prv_tl_y <= box2->cur_br_y)
            {
                return DIR_TOP;
            }
            if (box2->cur_tl_y <= box1->prv_br_y)
            {
                return DIR_BOT;
            }
        }

        if (box2->cur_br_y < box1->prv_tl_y && box1->prv_br_y < box2->cur_tl_y)
        {
            if (box1->prv_br_x <= box2->cur_tl_x)
            {
                return DIR_LEFT;
            }
            if (box2->cur_br_x <= box1->prv_tl_x)
            {
                return DIR_RIGHT;
            }
        }

        // Diagonal collision

        if (box2->cur_tl_x <= box1->prv_tl_x && box1->prv_tl_y <= box2->cur_tl_y)
        {
            h_diff = box2->cur_br_x - box1->cur_tl_x;
            v_diff = box1->cur_tl_y - box2->cur_br_y;

            if (v_diff < h_diff)
            {
                return DIR_TOP;
            }
            if (h_diff < v_diff)
            {
                return DIR_LEFT;
            }

            return DIR_TOP_LEFT;
        }

        if (box1->prv_br_x <= box2->cur_br_x && box1->prv_tl_y <= box2->cur_tl_y)
        {
            h_diff = box1->cur_br_x - box2->cur_tl_x;
            v_diff = box1->cur_tl_y - box2->cur_br_y;

            if (v_diff < h_diff)
            {
                return DIR_TOP;
            }
            if (h_diff < v_diff)
            {
                return DIR_RIGHT;
            }

            return DIR_TOP_RIGHT;
        }

        if (box2->cur_tl_x <= box1->prv_tl_x && box2->cur_br_y <= box1->prv_br_y)
        {
            h_diff = box2->cur_br_x - box1->cur_tl_x;
            v_diff = box2->cur_tl_y - box1->cur_br_y;

            if (v_diff < h_diff)
            {
                return DIR_BOT;
            }
            if (h_diff < v_diff)
            {
                return DIR_LEFT;
            }

            return DIR_BOT_LEFT;
        }

        if (box1->prv_br_x <= box2->cur_br_x && box2->cur_br_y <= box1->prv_br_y)
        {
            h_diff = box1->cur_br_x - box2->cur_tl_x;
            v_diff = box2->cur_tl_y - box1->cur_br_y;

            if (v_diff < h_diff)
            {
                return DIR_BOT;
            }
            if (h_diff < v_diff)
            {
                return DIR_RIGHT;
            }

            return DIR_BOT_RIGHT;
        }
    }

    return DIR_NONE;
}

bool ResolveCollision(box_t *box1, const uint16_t box1_force, box_t *box2)
{
    dir_t dir;
    float diff, box1_ratio, box2_ratio, cache;

    if ((dir = GetDirection(box1, box2)) == DIR_NONE)
    {
        return false;
    }

    if (box1_force <= box2->drag)
    {
        switch (dir) // Intentional design to allow
                     // less code with the same functionality
        {
            case DIR_TOP_LEFT:
                diff = box2->cur_br_x - box1->cur_tl_x;
                box1->cur_tl_x += diff;
                box1->cur_br_x += diff;

            case DIR_TOP:
                diff = box1->cur_tl_y - box2->cur_br_y;
                box1->cur_tl_y -= diff;
                box1->cur_br_y -= diff;
            return true;

            case DIR_TOP_RIGHT:
                diff = box1->cur_tl_y - box2->cur_br_y;
                box1->cur_tl_y -= diff;
                box1->cur_br_y -= diff;

            case DIR_RIGHT:
                diff = box1->cur_br_x - box2->cur_tl_x;
                box1->cur_tl_x -= diff;
                box1->cur_br_x -= diff;
            return true;

            case DIR_BOT_LEFT:
                diff = box2->cur_tl_y - box1->cur_br_y;
                box1->cur_tl_y += diff;
                box1->cur_br_y += diff;

            case DIR_LEFT:
                diff = box2->cur_br_x - box1->cur_tl_x;
                box1->cur_tl_x += diff;
                box1->cur_br_x += diff;
            return true;

            case DIR_BOT_RIGHT:
                diff = box1->cur_br_x - box2->cur_tl_x;
                box1->cur_tl_x -= diff;
                box1->cur_br_x -= diff;

            case DIR_BOT:
                diff = box2->cur_tl_y - box1->cur_br_y;
                box1->cur_tl_y += diff;
                box1->cur_br_y += diff;
            return true;

            default:
            return false;
        }
    }
    else
    {
        box2_ratio = (float)box1_force / (box1_force + box2->drag);
        box1_ratio = 1 - box1_ratio;

        switch (dir)
        {
            case DIR_TOP:
                diff = box1->cur_tl_y - box2->cur_br_y;

                cache = diff * box1_ratio;
                box1->cur_tl_y -= cache;
                box1->cur_br_y -= cache;
                cache = diff * box2_ratio;
                box2->cur_tl_y += cache;
                box2->cur_tl_y += cache;
            return true;

            default:
            return false;
        }
    }

    return false;
}

void NewBranch(const uint16_t root_force, box_t *current,
               box_t *layer_begin[], box_t *layer_end[])
{
    uint16_t total_drag;
    box_t **nexts_begin, **nexts_end;
    size_t n;

    total_drag = 0;
    nexts_begin = NULL;
    n = 0;

    for (box_t **next = layer_begin; next != layer_end; next++)
    {
        if (*next != current && ValidateCollision(current, *next))
        {
            if (n % BUFF_SIZE == 0 && (nexts_begin = (box_t**)realloc(nexts_begin, sizeof(box_t*) * (n + BUFF_SIZE))) == NULL)
            {
                (void)fputs("core::NewBranch(): Memory allocation failed", stderr);
                exit(1);
            }

            total_drag = (*next)->drag;
            nexts_begin[n++] = *next;
        }
    }

    nexts_end = nexts_begin + n;

    if (current->force <= total_drag)
    {
        for (box_t **next = nexts_begin; next != nexts_end; next++)
        {
            (void)ResolveCollision(current, 0, *next);
        }
    }
    else
    {
        for (box_t **next = nexts_begin; next != nexts_end; next++)
        {
            if (ResolveCollision(current, (*next)->drag + root_force - total_drag, *next))
            {
                NewBranch(root_force - total_drag, *next, layer_begin, layer_end);
                (void)ResolveCollision(current, 0, *next);
            }
        }
    }

    free(nexts_begin);
}

void ResolveCollisionLayer(box_t *root, box_t *layer_begin[], box_t *layer_end[])
{
    uint16_t total_drag;
    box_t **nexts_begin, **nexts_end;
    size_t n;

    total_drag = 0;
    nexts_begin = NULL;
    n = 0;

    // Sum up the drag of the new valid collisions

    for (box_t **next = layer_begin; next != layer_end; next++)
    {
        if (*next != root && ValidateCollision(root, *next))
        {
            if (n % BUFF_SIZE == 0 &&
                (nexts_begin = 
                 (box_t**)realloc(nexts_begin, 
                                  sizeof(box_t*) * (n + BUFF_SIZE))) == NULL)
            {
                (void)fputs("core::ResolveCollisionLayer(): "
                            "Memory allocation failed", stderr);
                exit(1);
            }
            
            total_drag = (*next)->drag;
            nexts_begin[n++] = *next;
        }
    }

    nexts_end = nexts_begin + n;

    // Handle the new collisions based on
    // the relation between current force / total drag

                                    // If there was not enough force
    if (root->force <= total_drag)  // apply 0 force collisions
    {
        for (box_t **next = nexts_begin; next != nexts_end; next++)
        {
            (void)ResolveCollision(root, 0, *next);
        }
    }       // Apply collision, if the collision got resolved
    else    // then start a new branch, finally normalize it
    {
        for (box_t **next = nexts_begin; next != nexts_end; next++)
        {
            if (ResolveCollision(root, (*next)->drag + root->force - total_drag, *next))
            {
                NewBranch(root->force - total_drag, *next, layer_begin, layer_end);
                (void)ResolveCollision(root, 0, *next);
            }
        }
    }

    free(nexts_begin);

    // Update the previous positions of each box

    for (box_t **box = layer_begin; box != layer_end; box++)
    {
        (*box)->prv_tl_x = (*box)->cur_tl_x;
        (*box)->prv_tl_y = (*box)->cur_tl_y;
        (*box)->prv_br_x = (*box)->cur_br_x;
        (*box)->prv_br_y = (*box)->cur_br_y;
    }
}
