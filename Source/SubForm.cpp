//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "SubForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormSub *FormSub;
//---------------------------------------------------------------------------
__fastcall TFormSub::TFormSub(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TFormSub::ReceiveCmdFromMainForm(TMessage &_msg) {
	this->Caption = L"Received Message";
    this->Cursor = crCross;
}
//---------------------------------------------------------------------------
