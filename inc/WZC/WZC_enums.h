
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

#pragma once

#include "WZC_include.h"

#ifdef __cplusplus
    namespace wzc { extern "C" {
#endif

enum Flip
{
    FLIP_NONE       =   SDL_FLIP_NONE,
    FLIP_HORIZONTAL =   SDL_FLIP_HORIZONTAL,
    FLIP_VERTICAL   =   SDL_FLIP_VERTICAL,
    FLIP_COUNT
} __attribute__((__packed__));

enum FontStyle
{
    FONT_NORMAL         =   TTF_STYLE_NORMAL,
    FONT_BOLD           =   TTF_STYLE_BOLD,
    FONT_ITALIC         =   TTF_STYLE_ITALIC,
    FONT_UNDERLINE      =   TTF_STYLE_UNDERLINE,
    FONT_STRIKETHROUGH  =   TTF_STYLE_STRIKETHROUGH
} __attribute__((__packed__));

enum ButtonState
{
    BTN_NONE            =   0x00,
    BTN_HOVERED         =   0x01,
    BTN_PRESSED_LMB     =   0x02,
    BTN_RELEASED_LMB    =   0x04,
    BTN_PRESSED_MMB     =   0x08,
    BTN_RELEASED_MMB    =   0x10,
    BTN_PRESSED_RMB     =   0x20,
    BTN_RELEASED_RMB    =   0x40
} __attribute__((__packed__));

enum InputKey
{
    KEY_A               =   SDL_SCANCODE_A,
    KEY_B               =   SDL_SCANCODE_B,
    KEY_C               =   SDL_SCANCODE_C,
    KEY_D               =   SDL_SCANCODE_D,
    KEY_E               =   SDL_SCANCODE_E,
    KEY_F               =   SDL_SCANCODE_F,
    KEY_G               =   SDL_SCANCODE_G,
    KEY_H               =   SDL_SCANCODE_H,
    KEY_I               =   SDL_SCANCODE_I,
    KEY_J               =   SDL_SCANCODE_J,
    KEY_K               =   SDL_SCANCODE_K,
    KEY_L               =   SDL_SCANCODE_L,
    KEY_M               =   SDL_SCANCODE_M,
    KEY_N               =   SDL_SCANCODE_N,
    KEY_O               =   SDL_SCANCODE_O,
    KEY_P               =   SDL_SCANCODE_P,
    KEY_Q               =   SDL_SCANCODE_Q,
    KEY_R               =   SDL_SCANCODE_R,
    KEY_S               =   SDL_SCANCODE_S,
    KEY_T               =   SDL_SCANCODE_T,
    KEY_U               =   SDL_SCANCODE_U,
    KEY_V               =   SDL_SCANCODE_V,
    KEY_W               =   SDL_SCANCODE_W,
    KEY_X               =   SDL_SCANCODE_X,
    KEY_Y               =   SDL_SCANCODE_Y,
    KEY_Z               =   SDL_SCANCODE_Z,

    KEY_1               =   SDL_SCANCODE_1,
    KEY_2               =   SDL_SCANCODE_2,
    KEY_3               =   SDL_SCANCODE_3,
    KEY_4               =   SDL_SCANCODE_4,
    KEY_5               =   SDL_SCANCODE_5,
    KEY_6               =   SDL_SCANCODE_6,
    KEY_7               =   SDL_SCANCODE_7,
    KEY_8               =   SDL_SCANCODE_8,
    KEY_9               =   SDL_SCANCODE_9,
    KEY_0               =   SDL_SCANCODE_0,

    KEY_RETURN          =   SDL_SCANCODE_RETURN,
    KEY_ESCAPE          =   SDL_SCANCODE_ESCAPE,
    KEY_BACKSPACE       =   SDL_SCANCODE_BACKSPACE,
    KEY_TAB             =   SDL_SCANCODE_TAB,
    KEY_SPACE           =   SDL_SCANCODE_SPACE,

    KEY_MINUS           =   SDL_SCANCODE_MINUS,
    KEY_EQUALS          =   SDL_SCANCODE_EQUALS,
    KEY_LEFTBRACKET     =   SDL_SCANCODE_LEFTBRACKET,
    KEY_RIGHTBRACKET    =   SDL_SCANCODE_RIGHTBRACKET,
    KEY_BACKSLASH       =   SDL_SCANCODE_BACKSLASH,
    KEY_NONUSHASH       =   SDL_SCANCODE_NONUSHASH,
    KEY_SEMICOLON       =   SDL_SCANCODE_SEMICOLON,
    KEY_APOSTROPHE      =   SDL_SCANCODE_APOSTROPHE,
    KEY_GRAVE           =   SDL_SCANCODE_GRAVE,
    KEY_COMMA           =   SDL_SCANCODE_COMMA,
    KEY_PERIOD          =   SDL_SCANCODE_PERIOD,
    KEY_SLASH           =   SDL_SCANCODE_SLASH,
    KEY_CAPSLOCK        =   SDL_SCANCODE_CAPSLOCK,

    KEY_F1              =   SDL_SCANCODE_F1,
    KEY_F2              =   SDL_SCANCODE_F2,
    KEY_F3              =   SDL_SCANCODE_F3,
    KEY_F4              =   SDL_SCANCODE_F4,
    KEY_F5              =   SDL_SCANCODE_F5,
    KEY_F6              =   SDL_SCANCODE_F6,
    KEY_F7              =   SDL_SCANCODE_F7,
    KEY_F8              =   SDL_SCANCODE_F8,
    KEY_F9              =   SDL_SCANCODE_F9,
    KEY_F10             =   SDL_SCANCODE_F10,
    KEY_F11             =   SDL_SCANCODE_F11,
    KEY_F12             =   SDL_SCANCODE_F12,

    KEY_PRINTSCREEN     =   SDL_SCANCODE_PRINTSCREEN,
    KEY_SCROLLLOCK      =   SDL_SCANCODE_SCROLLLOCK,
    KEY_PAUSE           =   SDL_SCANCODE_PAUSE,
    KEY_INSERT          =   SDL_SCANCODE_INSERT,
    KEY_HOME            =   SDL_SCANCODE_HOME,
    KEY_PAGEUP          =   SDL_SCANCODE_PAGEUP,
    KEY_DELETE          =   SDL_SCANCODE_DELETE,
    KEY_END             =   SDL_SCANCODE_END,
    KEY_PAGEDOWN        =   SDL_SCANCODE_PAGEDOWN,
    KEY_RIGHT           =   SDL_SCANCODE_RIGHT,
    KEY_LEFT            =   SDL_SCANCODE_LEFT,
    KEY_DOWN            =   SDL_SCANCODE_DOWN,
    KEY_UP              =   SDL_SCANCODE_UP,

    KEY_NUMLOCKCLEAR    =   SDL_SCANCODE_NUMLOCKCLEAR,
    KEY_KP_DIVIDE       =   SDL_SCANCODE_KP_DIVIDE,
    KEY_KP_MULTIPLY     =   SDL_SCANCODE_KP_MULTIPLY,
    KEY_KP_MINUS        =   SDL_SCANCODE_KP_MINUS,
    KEY_KP_PLUS         =   SDL_SCANCODE_KP_PLUS,
    KEY_KP_ENTER        =   SDL_SCANCODE_KP_ENTER,
    KEY_KP_1            =   SDL_SCANCODE_KP_1,
    KEY_KP_2            =   SDL_SCANCODE_KP_2,
    KEY_KP_3            =   SDL_SCANCODE_KP_3,
    KEY_KP_4            =   SDL_SCANCODE_KP_4,
    KEY_KP_5            =   SDL_SCANCODE_KP_5,
    KEY_KP_6            =   SDL_SCANCODE_KP_6,
    KEY_KP_7            =   SDL_SCANCODE_KP_7,
    KEY_KP_8            =   SDL_SCANCODE_KP_8,
    KEY_KP_9            =   SDL_SCANCODE_KP_9,
    KEY_KP_0            =   SDL_SCANCODE_KP_0,
    KEY_KP_PERIOD       =   SDL_SCANCODE_KP_PERIOD,

    KEY_LCTRL           =   SDL_SCANCODE_LCTRL,
    KEY_LSHIFT          =   SDL_SCANCODE_LSHIFT,
    KEY_LALT            =   SDL_SCANCODE_LALT,
    KEY_LGUI            =   SDL_SCANCODE_LGUI,
    KEY_RCTRL           =   SDL_SCANCODE_RCTRL,
    KEY_RSHIFT          =   SDL_SCANCODE_RSHIFT,
    KEY_RALT            =   SDL_SCANCODE_RALT,
    KEY_RGUI            =   SDL_SCANCODE_RGUI,

    KEY_MOUSE_LMB,
    KEY_MOUSE_MMB,
    KEY_MOUSE_RMB,
    KEY_MOUSE_WHEEL,

    KEY_COUNT
} __attribute__((__packed__));

#ifdef __cplusplus
    }}
#endif
