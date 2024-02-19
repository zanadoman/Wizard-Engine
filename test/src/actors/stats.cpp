#include "../demo.hpp"

stats::stats(engine* Engine, game* Game) : Engine(Engine), Game(Game)
{
    this->Actor = this->Engine->Actors.New(NULL, ACT_NONE, 20, this->Engine->Window.GetHeight() - 20, 0, 0, 0);
    this->GameTime = this->Actor->Textboxes.New("GameTime: 0ms", this->Game->Assets.FontFreeSansFont);
    this->RenderTime = this->Actor->Textboxes.New("RenderTime: 0ms", this->Game->Assets.FontFreeSansFont);
    this->FrameTime = this->Actor->Textboxes.New("FrameTime: 0ms", this->Game->Assets.FontFreeSansFont);

    this->GameTime->SetHeight(20);
    this->GameTime->SetX(this->Actor->GetX() + (this->GameTime->GetWidth() >> 1));
    this->GameTime->SetY(this->Actor->GetY() - 10);
    this->GameTime->ColorR = 0;
    this->GameTime->ColorG = 0;
    this->GameTime->ColorB = 0;

    this->RenderTime->SetHeight(20);
    this->RenderTime->SetX(this->Actor->GetX() + (this->RenderTime->GetWidth() >> 1));
    this->RenderTime->SetY(this->Actor->GetY() - 40);
    this->RenderTime->ColorR = 0;
    this->RenderTime->ColorG = 0;
    this->RenderTime->ColorB = 0;

    this->FrameTime->SetHeight(20);
    this->FrameTime->SetX(this->Actor->GetX() + (this->FrameTime->GetWidth() >> 1));
    this->FrameTime->SetY(this->Actor->GetY() - 70);
    this->FrameTime->ColorR = 0;
    this->FrameTime->ColorG = 0;
    this->FrameTime->ColorB = 0;
}

stats::~stats()
{
    this->Engine->Actors.Delete(this->Actor->GetID());
}

uint8 stats::Update()
{
    string str;

    this->GameTime->SetLiteral((((str = {"GameTime: "}) += {(uint64)this->Engine->Timing.GetGameTime()}) += {"ms"})());
    this->GameTime->SetX(this->Actor->GetX() + (this->GameTime->GetWidth() >> 1));

    this->RenderTime->SetLiteral((((str = {"RenderTime: "}) += {(uint64)this->Engine->Timing.GetRenderTime()}) += {"ms"})());
    this->RenderTime->SetX(this->Actor->GetX() + (this->RenderTime->GetWidth() >> 1));

    this->FrameTime->SetLiteral((((str = {"FrameTime: "}) += {(uint64)this->Engine->Timing.GetFrameTime()}) += {"ms"})());
    this->FrameTime->SetX(this->Actor->GetX() + (this->FrameTime->GetWidth() >> 1));

    return 0;
}