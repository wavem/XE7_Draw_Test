//---------------------------------------------------------------------------

#pragma hdrstop

#include "Define.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)



void CItemObject::DrawItem(TCanvas* _pCanvas) {
	TCanvas* t_pCanvas = _pCanvas;
    TPoint t_Points[3] = {Point(Rect.Left, Rect.Bottom), Point(Rect.Right, Rect.Bottom), Point(Rect.Width() / 2 + Rect.Left, Rect.Top)};

    switch(ObjectType) {
        case SHAPE_RECTANGLE:
        	t_pCanvas->Rectangle(Rect);
        	break;

        case SHAPE_CIRCLE:
        	t_pCanvas->Ellipse(Rect);
        	break;

        case SHAPE_TRIANGLE:
        	t_pCanvas->Polygon(t_Points, 2);
        	break;

        case SHAPE_ROUNTRECT:
        	t_pCanvas->RoundRect(Rect, 20, 20);
        	break;

        case SHAPE_LINE:
        	t_pCanvas->MoveTo(Rect.Left, Rect.Top);
            t_pCanvas->LineTo(Rect.Right, Rect.Bottom);
        	break;

        default:
        	t_pCanvas->Rectangle(Rect);
        	break;
    }
}
//---------------------------------------------------------------------------
