//---------------------------------------------------------------------------

#ifndef DefineH
#define DefineH
//---------------------------------------------------------------------------

#include <System.Classes.hpp>
#include <Vcl.Graphics.hpp>

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


class CItemObject {

public:
	//CItemObject();
    //~CItemObject();

public: // Default Member Variables
	UINT32 ObjectType;
    BOOL Selected;
    TRect Rect;
    TPoint StartPoint;
    TPoint EndPoint;

public: // Common Property
	UnicodeString ID;
    UINT32 Width;
    UINT32 Height;
    INT32 Left;
    INT32 Top;
    UINT32 Layer;
    UINT32 BorderThickness;
	UINT32 BorderColor;
    UINT32 BackgroundColor;
    UINT32 Alpha;
    BOOL Visible;
    BOOL Enabled;

public: // Unique Property
	//// Page Property
    UnicodeString 	Page_ImageFilePath;
    UnicodeString 	Page_Language;
    UnicodeString 	Page_Caption;
    UINT32 			Page_Number; // Maybe it is same as Z-Order
    UnicodeString 	Page_PageType; // PIB or PID
    UnicodeString	Page_PIBText;
    UnicodeString	Page_PIBFont;
    BOOL			Page_PIBScrollEnabled;
    UINT32			Page_PIBScrollDirection;
    UINT32			Page_PIBScrollSpeed;

    //// Shape(Line) Property
    UINT32			Line_Angle;

    //// Shape(Rect) Property
    // There is no unique property of Shape(Rect)

    //// Shape(RoundRect) Property
    UINT32			RoundRect_RoundValue;

    //// Shape(Circle) Property
    UINT32			Circle_Radius;

    //// Shape(Triangle) Property
    // There is no unique property of Shape(Circle)

    //// Label Property
    UnicodeString	Label_Text;
    UnicodeString	Label_Language;
    TStringList*		Label_TextList;
    UINT32			Label_TextListIndex;
    TStringList*		Label_FondList;
    UINT32			Label_FondListIndex;
    UnicodeString	Label_Font;
    UINT32			Label_FontSize;
    UINT32			Label_FontColor;
    BOOL			Label_FontBold;
    BOOL			Label_FontUnderLine;
    UINT32			Label_Alignment;
    BOOL			Label_Transparent;

    //// DateTime Property
    UnicodeString	DateTime_Format;

    //// Scroll Label Property
    UINT32			ScrollLabel_ScrollDirection;
    INT32			ScrollLabel_ScrollCount;
    UINT32			ScrollLabel_ScrollSpeed;

    //// Image Property
    UnicodeString 	Image_ImageFilePath;
    UINT32          Image_RenderingType;
    UINT32			Image_ImageFrameCount;
    INT32			Image_ImageIndex;
    UINT32			Image_FramePerSec;

    //// Image Label Property
    INT32			ImageLabel_LabelPositionLeft;
    INT32			ImageLabel_LabelPositionTop;
    BOOL			ImageLabel_LabelVisible;

    //// Figure Property
    UnicodeString	Figure_ImageFilePath;
    BOOL			Figure_Flickering;
    UINT32			Figure_FlickeringPerSec;

    //// Video Property
    UnicodeString	Video_IP;
    UINT32			Video_Port;
    UINT32			Video_AspectRatio;


public: // Member Functions
	void CheckMousePointerIn(TPoint _Point);
    void DrawItem(TCanvas* _pCanvas);

};

//---------------------------------------------------------------------------
#endif
