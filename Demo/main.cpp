/*
**Overlap system
**Collision system
**Particle system
**Bloom
**Networking
*/

#include "demo.hpp"

#undef main

using namespace slay;

sint32 main(sint32 argc, char* *argv)
{
    uint64 Player, PlayerTexture, PlayerText, Background, BackgroundTexture, Texture1, Texture2, Font;

    engine Engine(NULL, 1920, 1080, 1000 / 165);
    
    Player = Engine.Actors.New(0);
    PlayerTexture = Engine.Actors[Player].Textures.New();
    PlayerText = Engine.Actors[Player].Texts.New();
    Texture1 = Engine.Assets.LoadTexture("test.png");
    Font = Engine.Assets.LoadFont("crazy-pixel.ttf", 48);

    Engine.Actors[Player].SetLayer(1);
    Engine.Actors[Player].SetDepth(0.025);
    Engine.Actors[Player].Textures[PlayerTexture].SetTextureID(Texture1);
    Engine.Actors[Player].Textures[PlayerTexture].Width = 100;
    Engine.Actors[Player].Textures[PlayerTexture].Height = 100;
    Engine.Actors[Player].Textures[PlayerTexture].AngleLocked = true;
    *Engine.Actors[Player].Texts[PlayerText].String() = {"Player"};
    Engine.Actors[Player].Texts[PlayerText].SetFont(Font);
    Engine.Actors[Player].Texts[PlayerText].Height = 50;
    Engine.Actors[Player].Texts[PlayerText].SetOffsetY(50);
    Engine.Actors[Player].Texts[PlayerText].OffsetLocked = true;
    Engine.Actors[Player].Texts[PlayerText].AngleLocked = true;

    Background = Engine.Actors.New(0);
    BackgroundTexture = Engine.Actors[Background].Textures.New();
    Texture2 = Engine.Assets.LoadTexture("back.png");

    Engine.Actors[Background].SetLayer(1);
    Engine.Actors[Background].Textures[BackgroundTexture].SetTextureID(Texture2);
    Engine.Actors[Background].Textures[BackgroundTexture].Width = 1280;
    Engine.Actors[Background].Textures[BackgroundTexture].Height = 720;
    Engine.Actors[Background].Textures[BackgroundTexture].Priority = 0;

    Engine.Camera.Bind(Player);

    while (Engine.Update())
    {
        if (Engine.Keys[KEY_LEFT])
        {
            Engine.Actors[Player].SetAngle(Engine.Actors[Player].GetAngle() + 0.2 * Engine.Timing.GetDeltaTime());
        }
        else if (Engine.Keys[KEY_RIGHT])
        {
            Engine.Actors[Player].SetAngle(Engine.Actors[Player].GetAngle() - 0.2 * Engine.Timing.GetDeltaTime());
        }
        if (Engine.Keys[KEY_UP])
        {
            Engine.Actors[Player].SetX(Engine.Vector.TerminalX(Engine.Actors[Player].GetX(), 0.5 * Engine.Timing.GetDeltaTime(), Engine.Actors[Player].GetAngle() + 90));
            Engine.Actors[Player].SetY(Engine.Vector.TerminalY(Engine.Actors[Player].GetY(), 0.5 * Engine.Timing.GetDeltaTime(), Engine.Actors[Player].GetAngle() + 90));
        }
        else if (Engine.Keys[KEY_DOWN])
        {
            Engine.Actors[Player].SetX(Engine.Vector.TerminalX(Engine.Actors[Player].GetX(), -0.5 * Engine.Timing.GetDeltaTime(), Engine.Actors[Player].GetAngle() + 90));
            Engine.Actors[Player].SetY(Engine.Vector.TerminalY(Engine.Actors[Player].GetY(), -0.5 * Engine.Timing.GetDeltaTime(), Engine.Actors[Player].GetAngle() + 90));
        }

        printf("%d %d %d %d\n", Engine.Timing.GetGameTime(), Engine.Timing.GetRenderTime(), Engine.Timing.GetWorkingTime(), Engine.Timing.GetFrameTime());
    }

    return 0;
}