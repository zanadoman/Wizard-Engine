#pragma once

#include "common.hpp" // IWYU pragma: keep
#include "error.hpp"  // IWYU pragma: keep

namespace wze {
    class window final {
        private: static SDL_Window   *base;
        private: static SDL_Renderer *renderer;
        private: static uint16_t      width;
        private: static uint16_t      height;

        public: static uint16_t            get_width();
        public: static uint16_t            get_height();

        public: static SDL_Window   *get_base();
        public: static SDL_Renderer *get_renderer();

        public: static void open(std::string title, std::string icon_path,
                                 uint16_t width, uint16_t height);
    };
}
