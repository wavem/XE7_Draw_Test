//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "SubForm.h"
#include "Main.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormSub *FormSub;
//---------------------------------------------------------------------------
__fastcall TFormSub::TFormSub(TComponent* Owner)
	: TForm(Owner)
{
	// Init Member Variables
	m_bIsDrawing = false;
    m_ReceivedObjectType = 0;
    m_bIsFirstClicked = false;
}
//---------------------------------------------------------------------------

void __fastcall TFormSub::ReceiveCmdFromMainForm(TMessage &_msg) {

	unsigned int t_wParam = _msg.WParam;
	int t_lParam = _msg.LParam;

	UnicodeString tempStr = L"";
	//UnicodeString *p = NULL;
	//p = (UnicodeString*)t_wParam;
	//tempStr = *p;
	//PrintMsg(tempStr);

    // Start Draw Routine
    m_ReceivedObjectType = t_wParam;
    this->Cursor = crCross;
    m_bIsDrawing = true;
    //this->Caption = L"Received Message"; // Test Code
}
//---------------------------------------------------------------------------

void __fastcall TFormSub::PrintMsg(UnicodeString _str) {
	UnicodeString tempStr = _str;
	SendMessage(FormMain->Handle, MSG_SUB_TO_MAIN, (unsigned int)&tempStr, 0x10);
}
//---------------------------------------------------------------------------

void __fastcall TFormSub::FormMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y)
{
    if(m_bIsDrawing) {
    	m_bIsFirstClicked = true;
    	m_Rect.top = Y;
    	m_Rect.left = X;
        return;
    }

    TPoint t_Point;
    t_Point.x = X;
    t_Point.y = Y;

    UnicodeString tempStr = L"";

    CDrawItem* t_DrawItem = GetDrawItem(t_Point);
    if(t_DrawItem) {
    	tempStr = L"Exist : ";
    	tempStr += t_DrawItem->Name;
        UnSelectAllItem();
        t_DrawItem->bIsSelected = true;
        Invalidate();
    	PrintMsg(tempStr);
    } else {
    	// Reset Select Routine Here...
        UnSelectAllItem();
        Invalidate();
    	PrintMsg(L"none");
    }
}
//---------------------------------------------------------------------------

void __fastcall TFormSub::UnSelectAllItem() {
	for(int i = 0 ; i < m_vDrawItem.size() ; i++) {
    	m_vDrawItem[i].bIsSelected = false;
    }

    // Delete Re-Sizing Rect
    m_LTRect = TRect(-1, -1, -1, -1);
    m_LBRect = TRect(-1, -1, -1, -1);
    m_RTRect = TRect(-1, -1, -1, -1);
    m_RBRect = TRect(-1, -1, -1, -1);
}
//---------------------------------------------------------------------------

CDrawItem* __fastcall TFormSub::GetDrawItem(TPoint _point) {

	for(int i = 0 ; i < m_vDrawItem.size() ; i++) {
        if(m_vDrawItem[i].rect.Contains(_point)) {

        	//m_vDrawItem[i].bIsSelected = true;
        	return &m_vDrawItem[i];
        }
    }
    return NULL;
}
//---------------------------------------------------------------------------

void __fastcall TFormSub::FormMouseMove(TObject *Sender, TShiftState Shift, int X,
          int Y)
{
	// Drawing Routine
	if(m_bIsDrawing && m_bIsFirstClicked) {
    	m_Rect.right = X;
    	m_Rect.bottom = Y;

        Invalidate();
        this->Canvas->DrawFocusRect(m_Rect);
    }

    // Check if in the Rect for Moving
    if(m_LTRect.Contains(TPoint(X, Y)) || m_RBRect.Contains(TPoint(X, Y))) {
    	this->Cursor = crSizeNWSE;
    } else if(m_LBRect.Contains(TPoint(X, Y)) || m_RTRect.Contains(TPoint(X, Y))) {
    	this->Cursor = crSizeNESW;
    } else {
    	// Check Re-Sizing Rect
    	for(int i = 0 ; i < m_vDrawItem.size() ; i++) {
            if(m_vDrawItem[i].bIsSelected) {
                if(m_vDrawItem[i].rect.Contains(TPoint(X, Y))) {
                    this->Cursor = crSizeAll;
                } else {
                    this->Cursor = crDefault;
                }
            }
        }
    }
}
//---------------------------------------------------------------------------

void __fastcall TFormSub::FormMouseUp(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y)
{
	if(m_bIsDrawing) {
    	m_bIsDrawing = false;
        this->Canvas->Rectangle(m_Rect);

        // Add Draw Item Routine Here
    	AddDrawItem(m_Rect, m_ReceivedObjectType);

        // Reset Routine
    	m_ReceivedObjectType = 0;
    	this->Cursor = crDefault;
    	m_bIsFirstClicked = false;
    }
}
//---------------------------------------------------------------------------

bool __fastcall TFormSub::AddDrawItem(TRect _rect, int _Type) {

	UnicodeString tempStr = L"";
    static unsigned int t_ID = 0;
	CDrawItem t_DrawItem;
    CShape t_Shape;

    // Making ID
    tempStr.sprintf(L"Type:%d, ID:%d", _Type, t_ID);
    t_DrawItem.Name = tempStr;

    // Set Inner Property
    t_DrawItem.rect = _rect;
    t_DrawItem.bIsSelected = false;

    if(_Type = 1) { // Shape
    	m_vDrawItem.push_back(t_DrawItem);
    }


    // End Routine
    t_ID++;
	return true;
}
//---------------------------------------------------------------------------

void __fastcall TFormSub::FormPaint(TObject *Sender)
{
    if(m_bIsDrawing) this->Canvas->DrawFocusRect(m_Rect);

    TRect t_Rect;
	for(int i = 0 ; i < m_vDrawItem.size() ; i++) {
    	if(m_vDrawItem[i].bIsSelected) {
        	// Draw Selected Rectangle
            t_Rect = m_vDrawItem[i].rect;
            this->Canvas->DrawFocusRect(t_Rect);

            m_LTRect = TRect(t_Rect.left - 4, t_Rect.top - 4, t_Rect.left + 4, t_Rect.top + 4);
    		m_LBRect = TRect(t_Rect.left - 4, t_Rect.bottom - 4, t_Rect.left + 4, t_Rect.bottom + 4);
    		m_RTRect = TRect(t_Rect.right - 4, t_Rect.top - 4, t_Rect.right + 4, t_Rect.top + 4);
    		m_RBRect = TRect(t_Rect.right - 4, t_Rect.bottom - 4, t_Rect.right + 4, t_Rect.bottom + 4);
            this->Canvas->Rectangle(m_LTRect);
            this->Canvas->Rectangle(m_LBRect);
            this->Canvas->Rectangle(m_RTRect);
            this->Canvas->Rectangle(m_RBRect);
        } else {
        	this->Canvas->Rectangle(m_vDrawItem[i].rect);
        }
    }

    //Invalidate();
}
//---------------------------------------------------------------------------



void __fastcall TFormSub::FormClose(TObject *Sender, TCloseAction &Action)
{
	Action = caFree;
}
//---------------------------------------------------------------------------
