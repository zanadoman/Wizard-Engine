#include "../demo.hpp"

normal::normal(engine* Engine, game* Game) : Engine(Engine), Game(Game), Pause(Engine, Game)
{
    this->Background = this->Engine->Actors.New(NULL, ACT_NONE, 0, 0, 19200, 10800, 0.1);
    this->BackgroundTexture = this->Background->Textures.New(this->Game->Assets.MapBackgroundTexture);
}

scene normal::Update()
{
    pause::state Pause;

    Pause = this->Pause.Update();

    if (Pause == pause::NONE)
    {
        //Do some stuff
    }
    else if (Pause == pause::MENU)
    {
        return SCENE_MENU;
    }

    return SCENE_NORMAL;
}