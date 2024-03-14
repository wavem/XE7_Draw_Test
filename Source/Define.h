//---------------------------------------------------------------------------

#ifndef DefineH
#define DefineH
//---------------------------------------------------------------------------

#include <System.Classes.hpp>

// Version Info
#define PROGRAM_VERSION			L"Version : 0.0.1"
#define PROGRAM_UPDATE_DATE     L"Update Date : 2024-03-05  PM 23:29"


// MESSAGE ID
#define MSG_CMD_DRAW_ITEM	50001

#define MSG_SUB_TO_MAIN		60001

// SIZE
#define SIZE_MINIMUM	10

// RESIZING DIRECTION
#define RESIZING_DIR_LEFTTOP		1
#define RESIZING_DIR_LEFTBOTTOM		2
#define RESIZING_DIR_RIGHTTOP		3
#define RESIZING_DIR_RIGHTBOTTOM	4
#define RESIZING_DIR_RIGHT			5
#define RESIZING_DIR_BOTTOM			6

// SHAPE
#define SHAPE_RECTANGLE		1
#define SHAPE_CIRCLE        2
#define SHAPE_TRIANGLE		3
#define SHAPE_ROUNTRECT		4
#define SHAPE_LINE			5



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
