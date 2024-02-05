#pragma once

#include "../WizardEngine/WizardEngine.hpp"

using namespace wze;

typedef enum
{
    BACKGROUND,
    PLAYER,
    CRATE
} ACTORS;

class background
{
    engine* Engine;

    public:
        uint64 Actor;
        background(engine* Engine);
        ~background();

    private:
        uint64 MainTexture;
        uint64 MainTextureTexture;
};

class player
{
    engine* Engine;

    public:
        uint64 Actor;
        player(engine* Engine);
        ~player();
        uint8 Update();

    private:
        uint64 MainFlipbook;
        array<uint64> MainFlipbookTextures;
        uint64 NameText;
        uint64 NameTextFont;
};

class crate
{
    engine* Engine;

    public:
        uint64 Actor;
        crate(engine* Engine, double X, double Y, uint16 Width, uint16 Height);
        ~crate();
    
    private:
        uint64 Texture;
        uint64 TextureAsset;
};