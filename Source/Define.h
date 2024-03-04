//---------------------------------------------------------------------------

#ifndef DefineH
#define DefineH
//---------------------------------------------------------------------------

#include <System.Classes.hpp>



// MESSAGE ID
#define MSG_CMD_DRAW_ITEM	50001




class CDrawItem {

public: // Inner Property
	TRect rect;

public: // Common Property
	int Top;
    int Left;
    int Right;
    int Bottom;
    int Width;
    int Height;

public:
	CDrawItem();
    ~CDrawItem();

};

class CShape : public CDrawItem
{
	UnicodeString Type;

};




//---------------------------------------------------------------------------
#endif
