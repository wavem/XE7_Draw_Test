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

    m_bCanMoving = false;   // Moving 가능한 상태
    m_bCanResizing = false; // Resizing 가능한 상태
    m_bNowMoving = false;   // 현재 Moving 중
    m_bNowResizing = false; // 현재 Resizing 중

    m_SelectedItem = NULL;
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
	// Drawing Routine
    if(m_bIsDrawing) {
    	m_bIsFirstClicked = true;
    	m_Rect.top = Y;
    	m_Rect.left = X;
        return;
    }

    // Common
    UnicodeString tempStr = L"";

    // Moving Routine
    if(m_bCanMoving) { // bCanMoving 이 참이라함은, 이미 선택된 객체가 있다는 소리임.
        m_bNowMoving = true;
        m_Rect = m_SelectedItem->rect;
        m_MovingX = X;
        m_MovingY = Y;
        return;
    }

    // Re-Sizing Routine
    if(m_bCanResizing) {
    	m_bNowResizing = true;
        m_Rect = m_SelectedItem->rect;
        m_MovingX = X;
        m_MovingY = Y;
        return;
    }

    // Select & Unselect Routine
    TPoint t_Point;
    t_Point.x = X;
    t_Point.y = Y;
    CDrawItem* t_DrawItem = GetDrawItem(t_Point);
    if(t_DrawItem) {
    	tempStr = L"Exist : ";
    	tempStr += t_DrawItem->Name;
        UnSelectAllItem();
        t_DrawItem->bIsSelected = true;
        m_SelectedItem = t_DrawItem;
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

    // Delete Selected Item
    m_SelectedItem = NULL;
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
        return;
    }

    // Moving Routine
    if(m_bNowMoving) {
    	m_SelectedItem->rect.left = m_Rect.left + (X - m_MovingX);
        m_SelectedItem->rect.top = m_Rect.top + (Y - m_MovingY);
        m_SelectedItem->rect.right = m_Rect.right + (X - m_MovingX);
        m_SelectedItem->rect.bottom = m_Rect.bottom + (Y - m_MovingY);
    	Invalidate();
        return;
    }

    // Re-Sizing Routine
    int t_dx = 0;
    int t_dy = 0;
    if(m_bNowResizing) {
    	if(m_ResizingDirection == RESIZING_DIR_LEFTTOP) {
        	t_dx = m_Rect.left + (X - m_MovingX);
            t_dy = m_Rect.top + (Y - m_MovingY);
            if(t_dx <= m_Rect.right - SIZE_MINIMUM && t_dy <= m_Rect.bottom - SIZE_MINIMUM) {
            	m_SelectedItem->rect.left = t_dx;
        		m_SelectedItem->rect.top = t_dy;
            }
        } else if(m_ResizingDirection == RESIZING_DIR_LEFTBOTTOM) {
        	t_dx = m_Rect.left + (X - m_MovingX);
            t_dy = m_Rect.bottom + (Y - m_MovingY);
            if(t_dx <= m_Rect.right - SIZE_MINIMUM && t_dy >= m_Rect.top + SIZE_MINIMUM) {
            	m_SelectedItem->rect.left = t_dx;
            	m_SelectedItem->rect.bottom = t_dy;
            }
        } else if(m_ResizingDirection == RESIZING_DIR_RIGHTTOP) {
        	t_dx = m_Rect.right + (X - m_MovingX);
            t_dy = m_Rect.top + (Y - m_MovingY);
            if(t_dx >= m_Rect.left + SIZE_MINIMUM && t_dy <= m_Rect.bottom - SIZE_MINIMUM) {
            	m_SelectedItem->rect.right = t_dx;
        		m_SelectedItem->rect.top = t_dy;
            }
        } else if(m_ResizingDirection == RESIZING_DIR_RIGHTBOTTOM) {
        	t_dx = m_Rect.right + (X - m_MovingX);
            t_dy = m_Rect.bottom + (Y - m_MovingY);
            if(t_dx >= m_Rect.left + SIZE_MINIMUM && t_dy >= m_Rect.top + SIZE_MINIMUM) {
            	m_SelectedItem->rect.right = t_dx;
        		m_SelectedItem->rect.bottom = t_dy;
            }
        } else {
            // Do Notting
            // 아마도 취소 루틴을 넣어야 할 듯?
		}

        Invalidate();
    	return;
    }

    // Check if in the Rect for Moving
    if(m_LTRect.Contains(TPoint(X, Y))) {
        this->Cursor = crSizeNWSE;
        m_bCanResizing = true;
        m_bCanMoving = false;
        m_ResizingDirection = RESIZING_DIR_LEFTTOP;
    } else if(m_RBRect.Contains(TPoint(X, Y))) {
		this->Cursor = crSizeNWSE;
        m_bCanResizing = true;
        m_bCanMoving = false;
        m_ResizingDirection = RESIZING_DIR_RIGHTBOTTOM;
    } else if(m_LBRect.Contains(TPoint(X, Y))) {
    	this->Cursor = crSizeNESW;
        m_bCanResizing = true;
        m_bCanMoving = false;
        m_ResizingDirection = RESIZING_DIR_LEFTBOTTOM;
    } else if(m_RTRect.Contains(TPoint(X, Y))) {
    	this->Cursor = crSizeNESW;
        m_bCanResizing = true;
        m_bCanMoving = false;
        m_ResizingDirection = RESIZING_DIR_RIGHTTOP;
    } else {
    	// Check Re-Sizing Rect
    	for(int i = 0 ; i < m_vDrawItem.size() ; i++) {
            if(m_vDrawItem[i].bIsSelected) {
                if(m_vDrawItem[i].rect.Contains(TPoint(X, Y))) {
                    this->Cursor = crSizeAll;
                    m_bCanMoving = true;
                } else {
                    this->Cursor = crDefault;
                    m_bCanMoving = false;
                    m_bCanResizing = false;
                }
            }
        }
    }
}
//---------------------------------------------------------------------------

void __fastcall TFormSub::FormMouseUp(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y)
{
	// Drawing Routine
	if(m_bIsDrawing) {
    	m_bIsDrawing = false;
        this->Canvas->Rectangle(m_Rect);

        // Add Draw Item Routine Here
        UnSelectAllItem();
    	AddDrawItem(m_Rect, m_ReceivedObjectType);

        // Reset Routine
    	m_ReceivedObjectType = 0;
    	this->Cursor = crDefault;
    	m_bIsFirstClicked = false;
        Invalidate();
        return;
    }

    // Moving Routine
    if(m_bNowMoving) {
        m_bNowMoving = false;
    }

    // Re-Sizing Routine
    if(m_bNowResizing) {
    	m_bNowResizing = false;
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
    t_DrawItem.bIsSelected = true;


	// Add to Member Vector
    if(_Type = 1) { // Shape
    	m_vDrawItem.push_back(t_DrawItem);
    }

    // Set Selected Item
	m_SelectedItem = &m_vDrawItem.back();

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
