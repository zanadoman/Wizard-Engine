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

#include "../../inc/WZC/WZC_render.h"

#define BUFF_SIZE 128
#define BLACK 0, 0, 0, 255

typedef struct Window       win_t;
typedef struct Camera       cam_t;
typedef struct RenderObject obj_t;

static const win_t *window;
static const cam_t *camera;

static obj_t  **queue_begin;
static obj_t  **queue_end;
static size_t   queue_size;

void InitRender(register const win_t *_window,
                register const cam_t *_camera)
{
    window = _window;
    camera = _camera;

    queue_begin = NULL;
    queue_end = NULL;
    queue_size = 0;
}

inline static bool IsNotVisible(register const obj_t *tex)
{
    if (tex->color.a == 0 || tex->width == 0 || tex->height == 0)
    {
        return true;
    }

    return false;
}

inline static void ApplyCamera(register obj_t *tex)
{
    tex->_angle = (double)tex->angle;

    if (tex->layer == 0)
    {
        tex->_area.x = floorf(tex->x);
        tex->_area.y = floorf(tex->y);
        tex->_area.w = tex->width;
        tex->_area.h = tex->height;
    }
    else
    {
        register const double scale = (double)tex->layer * (double)camera->zoom;

        if (camera->angle == 0)
        {
            tex->_area.x = floor(((double)tex->x - (double)camera->x) * scale);
            tex->_area.y = floor(((double)tex->y - (double)camera->y) * scale);
        }
        else
        {
            register const double x = ((double)tex->x - (double)camera->x) * scale;
            register const double y = ((double)tex->y - (double)camera->y) * scale;
            register const double x2 = x * x;
            register const double y2 = y * y;
            register const double len = sqrt(x2 + y2);

            tex->_area.x = floor(len * cos((double)-camera->angle));
            tex->_area.y = floor(len * sin((double)-camera->angle));
            tex->_angle -= (double)camera->angle;
        }

        tex->_area.w = floor(tex->width * scale);
        tex->_area.h = floor(tex->height * scale);
    }

    tex->_area.x = tex->_area.x - (tex->_area.w >> 1) + window->origo_x;
    tex->_area.y = -(tex->_area.y - (tex->_area.h >> 1) - window->origo_y);
}

inline static bool IsNotOnScreen(register const obj_t *tex)
{
    register const uint16_t half_w = tex->_area.w >> 1;
    register const uint16_t half_h = tex->_area.h >> 1;

    if (tex->_area.x + half_w < 0 || window->width <= tex->_area.x - half_w ||
        tex->_area.y + half_h < 0 || window->height <= tex->_area.y - half_h)
    {
        return true;
    }

    return false;
}

inline static void SelectionStage(register obj_t *texs_begin[],
                                  register obj_t *texs_end[])
{
    register size_t n;

    n = 0;

    for (register obj_t **tex = texs_begin; tex != texs_end; tex++)
    {
        if (IsNotVisible(*tex))
        {
            continue;
        }

        ApplyCamera(*tex);

        if (IsNotOnScreen(*tex))
        {
            continue;
        }

        if (n == queue_size && (queue_begin = (obj_t**)realloc(queue_begin,
                                sizeof(obj_t*) * (queue_size += BUFF_SIZE))) == NULL)
        {
            exit(ENOMEM);
        }

        queue_begin[n++] = *tex;
    }

    if (n < queue_size)
    {
        queue_begin = (obj_t**)realloc(queue_begin, sizeof(obj_t*) * n);
    }

    queue_size = n;
}

inline static void SortByLayer(void)
{
    register obj_t **restrict left_arr;
    register obj_t **restrict right_arr;

    {
        register size_t n;

        n = queue_size - 1;
        n |= (n >> 1);
        n |= (n >> 2);
        n |= (n >> 4);
        n |= (n >> 8);
        n |= (n >> 16);
        #if 64 <= __WORDSIZE
        n |= (n >> 32);
        #endif
        n -= (n >> 1);
        n *= sizeof(obj_t*);

        if ((left_arr = (obj_t**)malloc(n)) == NULL)
        {
            exit(ENOMEM);
        }
        if ((right_arr = (obj_t**)malloc(n)) == NULL)
        {
            exit(ENOMEM);
        }
    }

    {
        register const size_t cache = queue_size - 1;

        for (register size_t current = 1; current < queue_size; current <<= 1)
        {
            for (register size_t left = 0, middle, right; left < cache; left += current << 1)
            {
                if (cache < (middle = left + current - 1))
                {
                    middle = cache;
                }
                if (cache < (right = left + (current << 1) - 1))
                {
                    right = cache;
                }

                {
                    register size_t i;
                    register size_t j;
                    register size_t k;

                    register const size_t left_size = middle - left + 1;
                    register const size_t right_size = right - middle;

                    for (i = 0; i < left_size; i++)
                    {
                        left_arr[i] = queue_begin[left + i];
                    }
                    for (j = 0; j < right_size; j++)
                    {
                        right_arr[j] = queue_begin[middle + j + 1];
                    }

                    for (i = 0, j = 0, k = left; i < left_size && j < right_size; k++)
                    {
                        queue_begin[k] = right_arr[j]->layer < left_arr[i]->layer
                                             ? right_arr[j++]
                                             : left_arr[i++];
                    }

                    while (i < left_size)
                    {
                        queue_begin[k++] = left_arr[i++];
                    }
                    while (j < right_size)
                    { 
                        queue_begin[k++] = right_arr[j++];
                    }
                }
            }
        }
    }

    free(left_arr);
    free(right_arr);
}

inline static void SortByPriority(register const size_t  size,
                                  register obj_t        *arr[size])
{
    register obj_t **restrict left_arr;
    register obj_t **restrict right_arr;

    {
        register size_t n;

        n = size - 1;
        n |= (n >> 1);
        n |= (n >> 2);
        n |= (n >> 4);
        n |= (n >> 8);
        n |= (n >> 16);
        #if 64 <= __WORDSIZE
        n |= (n >> 32);
        #endif
        n -= (n >> 1);
        n *= sizeof(obj_t*);

        if ((left_arr = (obj_t**)malloc(n)) == NULL)
        {
            exit(ENOMEM);
        }
        if ((right_arr = (obj_t**)malloc(n)) == NULL)
        {
            exit(ENOMEM);
        }
    }

    {
        register const size_t cache = size - 1;

        for (register size_t current = 1; current < size; current <<= 1)
        {
            for (register size_t left = 0, middle, right; left < cache; left += current << 1)
            {
                if (cache < (middle = left + current - 1))
                {
                    middle = cache;
                }
                if (cache < (right = left + (current << 1) - 1))
                {
                    right = cache;
                }

                {
                    register size_t i;
                    register size_t j;
                    register size_t k;

                    register const size_t left_size = middle - left + 1;
                    register const size_t right_size = right - middle;

                    for (i = 0; i < left_size; i++)
                    {
                        left_arr[i] = arr[left + i];
                    }
                    for (j = 0; j < right_size; j++)
                    {
                        right_arr[j] = arr[middle + j + 1];
                    }

                    for (i = 0, j = 0, k = left; i < left_size && j < right_size; k++)
                    {
                        arr[k] = right_arr[j]->priority < left_arr[i]->priority
                                     ? right_arr[j++]
                                     : left_arr[i++];
                    }

                    while (i < left_size)
                    {
                        arr[k++] = left_arr[i++];
                    }
                    while (j < right_size)
                    { 
                        arr[k++] = right_arr[j++];
                    }
                }
            }
        }
    }

    free(left_arr);
    free(right_arr);
}

inline static void SortingStage(void)
{
    SortByLayer();

    {
        register size_t i;
        register size_t j;

        for (i = 0, j = 1; j < queue_size; j++)
        {
            if (queue_begin[i]->layer == queue_begin[j]->layer || j - i == 1)
            {
                continue;
            }

            SortByPriority(j - i, queue_begin + i);
            i = j;
        }

        if (j - i != 1)
        {
            SortByPriority(j - i, queue_begin + i);
        }
    }
}

inline static void RenderTexture(register const obj_t *tex)
{
    #define rgb(color) color.r, color.g, color.b
    #define rgba(color) color.r, color.g, color.b, color.a
    #define area(tex) NULL, &tex->_area
    #define angle(tex) tex->_angle, NULL
    #define flip(tex) (SDL_RendererFlip)tex->flip

    if (tex->data == NULL)
    {
        (void)SDL_SetRenderDrawColor(window->renderer, rgba(tex->color));
        (void)SDL_RenderFillRect(window->renderer, &tex->_area);
    }
    else
    {
        (void)SDL_SetTextureColorMod(tex->data, rgb(tex->color));
        (void)SDL_SetTextureAlphaMod(tex->data, tex->color.a);
        (void)SDL_RenderCopyEx(window->renderer, tex->data, area(tex), angle(tex), flip(tex));
    }

    #undef rgb 
    #undef rgba
    #undef area
    #undef angle
    #undef flip
}

inline static void RenderingStage(void)
{
    register obj_t **border;

    for (border = queue_begin; border != queue_end; border++)
    {
        if ((*border)->layer != 0)
        {
            break;
        }
    }

    for (register obj_t **tex = border; tex != queue_end; tex++)
    {
        RenderTexture(*tex);
    }

    for (register obj_t **tex = queue_begin; tex != border; tex++)
    {
        RenderTexture(*tex);
    }
}

void UpdateRender(register obj_t  *texs_begin[],
                  register obj_t **texs_end)
{
    (void)SDL_SetRenderDrawColor(window->renderer, BLACK);
    (void)SDL_RenderClear(window->renderer);

    SelectionStage(texs_begin, texs_end);
    SortingStage();
    RenderingStage();

    SDL_RenderPresent(window->renderer);
}

void FreeRender(void)
{
    free(queue_begin);
}
