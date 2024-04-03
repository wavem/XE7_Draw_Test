//---------------------------------------------------------------------------

#pragma hdrstop

#include "Define.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)

void CItemObject::DrawItem(TCanvas* _pCanvas) {
	TCanvas* t_pCanvas = _pCanvas;
    t_pCanvas->Rectangle(Rect);
}
//---------------------------------------------------------------------------
