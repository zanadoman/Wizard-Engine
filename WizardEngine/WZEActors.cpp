#include "WizardEngine.hpp"

using namespace neo;

namespace wze
{
    engine::actors::actors(engine* Engine) : Engine(Engine), Actors({(actor*)NULL}) {}

    uint64 engine::actors::New(void* Data, uint64 Type, double X, double Y, uint16 Width, uint16 Height, double Layer)
    {
        if (X != X)
        {
            printf("wze::engine.actors.New(): X must not be NaN\nParams: Data: %p, Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\n", Data, Type, X, Y, Width, Height, Layer);
            exit(1);
        }
        if (Y != Y)
        {
            printf("wze::engine.actors.New(): Y must not be NaN\nParams: Data: %p, Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\n", Data, Type, X, Y, Width, Height, Layer);
            exit(1);
        }
        if (Layer != Layer)
        {
            printf("wze::engine.actors.New(): Layer must not be NaN\nParams: Data: %p, Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\n", Data, Type, X, Y, Width, Height, Layer);
            exit(1);
        }
        if (Layer < 0)
        {
            printf("wze::engine.actors.New(): Layer must not be less than 0\nParams: Data: %p, Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\n", Data, Type, X, Y, Width, Height, Layer);
            exit(1);
        }

        for (uint64 i = 1; i < this->Actors.Length(); i++)
        {
            if (this->Actors[i] == NULL)
            {
                if ((this->Actors[i] = new actor(this->Engine, Data, Type, X, Y, Width, Height, Layer)) == NULL)
                {
                    printf("wze::engine.actors.New(): Memory allocation failed\nParams: Data: %p, Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\n", Data, Type, X, Y, Width, Height, Layer);
                    exit(1);
                }

                return i;
            }
        }

        if ((this->Actors += {new actor(this->Engine, Data, Type, X, Y, Width, Height, Layer)})[this->Actors.Length() - 1] == NULL)
        {
            printf("wze::engine.actors.New(): Memory allocation failed\nParams: Data: %p, Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\n", Data, Type, X, Y, Width, Height, Layer);
            exit(1);
        }

        return this->Actors.Length() - 1;
    }

    uint8 engine::actors::Delete(uint64 ID)
    {
        uint64 i;

        if (this->Actors.Length() <= ID || this->Actors[ID] == NULL)
        {
            return 0;
        }

        delete this->Actors[ID];
        this->Actors[ID] = NULL;

        if (this->Actors[this->Actors.Length() - 1] == NULL && 1 < this->Actors.Length())
        {
            for (i = this->Actors.Length(); 1 < i; i--)
            {
                if (this->Actors[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Actors.Remove(i, this->Actors.Length() - i);
        }

        return 0;
    }

    uint8 engine::actors::Purge(std::initializer_list<uint64> Keep)
    {
        uint64 i;

        for (i = 1; i < this->Actors.Length(); i++)
        {
            if (!initializer_list_Contains(Keep, {i}))
            {
                delete this->Actors[i];
                this->Actors[i] = NULL;
            }
        }

        if (this->Actors[this->Actors.Length() - 1] == NULL && 1 < this->Actors.Length())
        {
            for (i = this->Actors.Length(); 1 < i; i--)
            {
                if (this->Actors[i - 1] != NULL)
                {
                    break;
                }
            }
            
            this->Actors.Remove(i, this->Actors.Length() - i);
        }

        return 0;
    }

    uint8 engine::actors::Purge(array<uint64>* Keep)
    {
        uint64 i;

        if (Keep == NULL)
        {
            printf("wze::engine.actors.Purge(): Keep must not be NULL\nParams: Keep: %p\n", Keep);
            exit(1);
        }

        for (i = 1; i < this->Actors.Length(); i++)
        {
            if (!Keep->Contains({i}))
            {
                delete this->Actors[i];
                this->Actors[i] = NULL;
            }
        }

        if (this->Actors[this->Actors.Length() - 1] == NULL && 1 < this->Actors.Length())
        {
            for (i = this->Actors.Length(); 1 < i; i--)
            {
                if (this->Actors[i - 1] != NULL)
                {
                    break;
                }
            }
            
            this->Actors.Remove(i, this->Actors.Length() - i);
        }

        return 0;
    }

    engine::actors::actor& engine::actors::operator [] (uint64 ID)
    {
        if (ID == 0)
        {
            printf("wze::engine.actors[]: Illegal access to NULL Actor\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Actors.Length() <= ID || this->Actors[ID] == NULL)
        {
            printf("wze::engine.actors[]: Actor does not exist\nParams: ID: %lld\n", ID);
            exit(1);
        }

        return *this->Actors[ID];
    }
}