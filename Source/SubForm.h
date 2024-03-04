//---------------------------------------------------------------------------

#ifndef SubFormH
#define SubFormH
//---------------------------------------------------------------------------
#include "Define.h"
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
//---------------------------------------------------------------------------
class TFormSub : public TForm
{
__published:	// IDE-managed Components
private:	// User declarations
public:		// User declarations
	__fastcall TFormSub(TComponent* Owner);


public: // User Message Handler
	void __fastcall ReceiveCmdFromMainForm(TMessage &_msg);




BEGIN_MESSAGE_MAP
	MESSAGE_HANDLER(MSG_CMD_DRAW_SHAPE, TMessage, ReceiveCmdFromMainForm)
END_MESSAGE_MAP(TForm)
};
//---------------------------------------------------------------------------
extern PACKAGE TFormSub *FormSub;
//---------------------------------------------------------------------------
#endif
