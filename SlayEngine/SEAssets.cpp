#include "Includes/SDL_image.h"
#include "Includes/SDL_render.h"
#include "Includes/SDL_surface.h"
#include "Includes/SDL_ttf.h"
#include "SlayEngine.hpp"

namespace slay
{
    engine::assets::assets(engine& Engine) : Engine(Engine) {}

    uint64 engine::assets::LoadTexture(const char* Path)
    {
        SDL_Surface* tmp;

        if (Path == NULL)
        {
            printf("engine.assets.LoadTexture(): Path must not be NULL\nParams: Path: %p\n", Path);
            exit(1);
        }

        if ((tmp = IMG_Load(Path)) == NULL)
        {
            printf("engine.assets.LoadTexture(): IMG_Load() failed\nParams: Path: %s\n", Path);
            exit(1);
        }
        if ((*(this->Textures += {SDL_CreateTextureFromSurface(Engine.Window.Renderer, tmp)}))[this->Textures.Length() - 1] == NULL)
        {
            printf("engine.assets.LoadTexture(): SDL_CreateTextureFromSurface() failed\nParams: Path: %s\n", Path);
            exit(1);
        }
        SDL_FreeSurface(tmp);

        return this->Textures.Length() - 1;
    }

    uint8 engine::assets::UnloadTexture(uint64 ID)
    {
        if (this->Textures.Length() <= ID)
        {
            printf("engine.assets.UnloadTexture(): ID does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        SDL_DestroyTexture(this->Textures[ID]);
        this->Textures[ID] = NULL;
        if (ID == this->Textures.Length() - 1)
        {
            this->Textures.Remove(ID, 1);
        }

        return 0;
    }

    uint64 engine::assets::LoadFont(const char* Path, uint8 Size)
    {
        if (Path == NULL)
        {
            printf("engine.assets.LoadFont(): Path must not be NULL\nParams: Path: %p\n", Path);
            exit(1);
        }

        if ((*(this->Fonts += {TTF_OpenFont(Path, Size)}))[this->Fonts.Length() - 1] == NULL)
        {
            printf("engine.assets.LoadFont(): TTF_OpenFont() failed\nParams: Path: %s\n", Path);
            exit(1);
        }

        return this->Fonts.Length() - 1;
    }

    uint8 engine::assets::UnloadFont(uint64 ID)
    {
        if (this->Fonts.Length() <= ID)
        {
            printf("engine.assets.UnloadFont(): ID does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        TTF_CloseFont(this->Fonts[ID]);
        this->Fonts[ID] = NULL;
        if (ID == this->Fonts.Length() - 1)
        {
            this->Fonts.Remove(ID, 1);
        }

        return 0;
    }

    uint64 engine::assets::LoadSound(const char* Path)
    {
        
    }
}