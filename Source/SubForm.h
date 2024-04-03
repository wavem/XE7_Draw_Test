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
    std::vector<CItemObject> m_vItemObject;
    TRect m_Rect;
    bool m_bIsFirstClicked;

    TRect m_LTRect;
    TRect m_LBRect;
    TRect m_RTRect;
    TRect m_RBRect;


    bool m_bCanMoving;   // Moving ������ ����
    bool m_bCanResizing; // Resizing ������ ����
    bool m_bNowMoving;   // ���� Moving ��
    bool m_bNowResizing; // ���� Resizing ��
    int m_ResizingDirection;
    int m_MovingX;
    int m_MovingY;

    CItemObject* m_SelectedItem;

public: // Member Functions
	bool __fastcall AddItemObject(int _Type, TRect _rect);
    void __fastcall PrintMsg(UnicodeString _str);
    CItemObject* __fastcall GetItemObject(TPoint _point);
    void __fastcall UnSelectAllItem();
    void __fastcall StartDrawing(int _ObjectType);
    void __fastcall StopDrawing();

    UnicodeString MakeTemporaryID(int _ObjectType);



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
