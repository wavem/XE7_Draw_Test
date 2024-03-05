//---------------------------------------------------------------------------

#ifndef SubFormH
#define SubFormH
//---------------------------------------------------------------------------
#include "Define.h"
#include <vector>
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
//---------------------------------------------------------------------------
class TFormSub : public TForm
{
__published:	// IDE-managed Components
	void __fastcall FormMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall FormMouseMove(TObject *Sender, TShiftState Shift, int X, int Y);
	void __fastcall FormMouseUp(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall FormPaint(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);

private:	// User declarations
public:		// User declarations
	__fastcall TFormSub(TComponent* Owner);

public: // Member Variables
	bool m_bIsDrawing;
    std::vector<CDrawItem> m_vDrawItem;
    TRect m_Rect;
    bool m_bIsFirstClicked;

public: // Member Functions
	bool __fastcall AddDrawItem(TRect _rect, int _Type);
    void __fastcall PrintMsg(UnicodeString _str);

public: // User Message Handler
	int m_ReceivedObjectType;
	void __fastcall ReceiveCmdFromMainForm(TMessage &_msg);




BEGIN_MESSAGE_MAP
	MESSAGE_HANDLER(MSG_CMD_DRAW_ITEM, TMessage, ReceiveCmdFromMainForm)
END_MESSAGE_MAP(TForm)
};
//---------------------------------------------------------------------------
extern PACKAGE TFormSub *FormSub;
//---------------------------------------------------------------------------
#endif
