//---------------------------------------------------------------------------

#ifndef DefineH
#define DefineH
//---------------------------------------------------------------------------

#include <System.Classes.hpp>

// Version Info
#define PROGRAM_VERSION			L"Version : 0.0.1"
#define PROGRAM_UPDATE_DATE     L"Update Date : 2024-03-05  PM 18:43"


// MESSAGE ID
#define MSG_CMD_DRAW_ITEM	50001

#define MSG_SUB_TO_MAIN		60001




class CDrawItem {

public: // Inner Property
	TRect rect;
    UnicodeString Name;
    bool bIsSelected;
    int Z_Order;

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
