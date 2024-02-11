#include "../demo.hpp"

eagle::eagle(engine* Engine, game* Game, double Y, double Layer, double MinX, double MaxX) : Engine(Engine), Game(Game)
{
    this->Actor = this->Engine->Actors.New(this, ACT_EAGLE, (MinX + MaxX) / 2, Y, 105, 105, Layer);
    this->Overlapbox = this->Actor->Overlapboxes.New(BOX_EAGLE);
    this->Fly = this->Actor->Flipbooks.New(125, &this->Game->Assets.EagleFlyTextures);
    this->Hurt = this->Actor->Flipbooks.New(125, &this->Game->Assets.EagleHurtTextures);
    this->MinX = MinX;
    this->MaxX = MaxX;
    this->Facing = 1;

    this->Overlapbox->SetWidth(this->Actor->GetWidth() + EPSILON * 2);
    this->Overlapbox->SetHeight(this->Actor->GetHeight() + EPSILON * 2);

    this->Fly->Width = 125;
    this->Fly->Height = 125;
    this->Fly->FlipHorizontal = true;

    this->Hurt->Width = 125;
    this->Hurt->Height = 125;
    this->Hurt->Visible = false;
}

eagle::~eagle()
{
    this->Engine->Actors.Delete(this->Actor->GetID());
}

uint8 eagle::Update()
{
    if (this->Actor->GetX() < this->MinX)
    {
        this->Actor->SetX(this->MinX);
        this->Facing = 1;
        this->Fly->FlipHorizontal = true;
    }
    else if (this->MaxX < this->Actor->GetX())
    {
        this->Actor->SetX(this->MaxX);
        this->Facing = -1;
        this->Fly->FlipHorizontal = false;
    }

    this->Actor->SetX(this->Actor->GetX() + 0.25 * this->Facing * this->Engine->Timing.GetDeltaTime());

    return 0;
}