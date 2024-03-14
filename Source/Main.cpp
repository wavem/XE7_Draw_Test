//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Main.h"
#include "SubForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxClasses"
#pragma link "cxControls"
#pragma link "cxGraphics"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "dxBar"
#pragma link "dxRibbon"
#pragma link "dxRibbonCustomizationForm"
#pragma link "dxRibbonSkins"
#pragma link "dxSkinBlack"
#pragma link "dxSkinBlue"
#pragma link "dxSkinBlueprint"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinCoffee"
#pragma link "dxSkinDarkRoom"
#pragma link "dxSkinDarkSide"
#pragma link "dxSkinDevExpressDarkStyle"
#pragma link "dxSkinDevExpressStyle"
#pragma link "dxSkinFoggy"
#pragma link "dxSkinGlassOceans"
#pragma link "dxSkinHighContrast"
#pragma link "dxSkiniMaginary"
#pragma link "dxSkinLilian"
#pragma link "dxSkinLiquidSky"
#pragma link "dxSkinLondonLiquidSky"
#pragma link "dxSkinMcSkin"
#pragma link "dxSkinMetropolis"
#pragma link "dxSkinMetropolisDark"
#pragma link "dxSkinMoneyTwins"
#pragma link "dxSkinOffice2007Black"
#pragma link "dxSkinOffice2007Blue"
#pragma link "dxSkinOffice2007Green"
#pragma link "dxSkinOffice2007Pink"
#pragma link "dxSkinOffice2007Silver"
#pragma link "dxSkinOffice2010Black"
#pragma link "dxSkinOffice2010Blue"
#pragma link "dxSkinOffice2010Silver"
#pragma link "dxSkinOffice2013DarkGray"
#pragma link "dxSkinOffice2013LightGray"
#pragma link "dxSkinOffice2013White"
#pragma link "dxSkinPumpkin"
#pragma link "dxSkinsCore"
#pragma link "dxSkinsDefaultPainters"
#pragma link "dxSkinsdxBarPainter"
#pragma link "dxSkinsdxRibbonPainter"
#pragma link "dxSkinSeven"
#pragma link "dxSkinSevenClassic"
#pragma link "dxSkinSharp"
#pragma link "dxSkinSharpPlus"
#pragma link "dxSkinSilver"
#pragma link "dxSkinSpringTime"
#pragma link "dxSkinStardust"
#pragma link "dxSkinSummer2008"
#pragma link "dxSkinTheAsphaltWorld"
#pragma link "dxSkinValentine"
#pragma link "dxSkinVisualStudio2013Blue"
#pragma link "dxSkinVisualStudio2013Dark"
#pragma link "dxSkinVisualStudio2013Light"
#pragma link "dxSkinVS2010"
#pragma link "dxSkinWhiteprint"
#pragma link "dxSkinXmas2008Blue"
#pragma link "AdvMemo"
#pragma resource "*.dfm"
TFormMain *FormMain;
//---------------------------------------------------------------------------
__fastcall TFormMain::TFormMain(TComponent* Owner)
	: TForm(Owner)
{
	InitProgram();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::InitProgram() {
	PrintMsg(L"Init Complete");
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintMsg(UnicodeString _str) {
	int t_Idx = memo->Lines->Add(_str);
    memo->SetCursor(0, t_Idx);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_NewClick(TObject *Sender)
{
	// Common
    UnicodeString tempStr = L"";
    UnicodeString t_pnName = L"";
    static int s_PageNumber = 1;

    // Add Routine
    TTabSheet* temp = new TTabSheet(PageControl);
    temp->PageControl = PageControl;
    tempStr.sprintf(L"Page%d", s_PageNumber);
    temp->Caption = tempStr;

    // Set New Page
    PageControl->ActivePageIndex = temp->PageIndex;

	// Create New Panel
    TPanel* t_Panel = new TPanel(PageControl->ActivePage);
    t_Panel->Parent = PageControl->ActivePage;

    t_Panel->Align = alClient;
    t_pnName = L"pn_" + tempStr;
    t_Panel->Name = t_pnName;
    t_Panel->Color = clRed; // Doesn't works
    t_Panel->Caption = L"";

    t_Panel->Visible = true;
    t_Panel->Show();


    // Add Sub-Form Routine
	TFormSub* p_SubForm = new TFormSub(t_Panel);
    p_SubForm->Parent = t_Panel;
    p_SubForm->Visible = true;
    p_SubForm->Left = 0;
    p_SubForm->Top = 0;
    tempStr.sprintf(L"Form Created %d", s_PageNumber);
    PrintMsg(tempStr);

    // End Routine
    s_PageNumber++;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_DeleteClick(TObject *Sender)
{
	// Common
    UnicodeString tempStr = L"";
    int t_TabCount = PageControl->PageCount;

    // Pre-Return
    if(t_TabCount == 0) {
     	tempStr.sprintf(L"There is no Pages");
        PrintMsg(tempStr);
        return;
    }

    int t_Idx = PageControl->ActivePageIndex;
    PageControl->Pages[t_Idx]->Free();

    tempStr.sprintf(L"Page %d is removed", t_Idx);
    PrintMsg(tempStr);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_TestClick(TObject *Sender)
{
	UnicodeString tempStr = L"";
    //tempStr.sprintf(L"Current Page Index : %d", PageControl->ActivePageIndex);
    //PrintMsg(tempStr);

    // Test Code
    //TFormSub* p_SubForm = (TFormSub*)PageControl->ActivePage->Components[0]->Components[0];
    //p_SubForm->Caption = L"temptemp";
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ReceiveMsgFromSubForm(TMessage &_msg) {
	unsigned int t_wParam = _msg.WParam;
	int t_lParam = _msg.LParam;

	UnicodeString tempStr = L"";
	UnicodeString *p = NULL;
	p = (UnicodeString*)t_wParam;
	tempStr = *p;
	PrintMsg(tempStr);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_Shape_RectClick(TObject *Sender)
{
	// Pre Return
    if(PageControl->PageCount == 0) {
    	PrintMsg(L"There is no Pages");
        return;
    }

    // Get Selected Form
    TFormSub* p_SubForm = (TFormSub*)PageControl->ActivePage->Components[0]->Components[0];
    unsigned int t_ObjectType = SHAPE_RECTANGLE; // Rectangle
    SendMessage(p_SubForm->Handle, MSG_CMD_DRAW_ITEM, t_ObjectType, 0x10);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::dxBarLargeButton5Click(TObject *Sender)
{
	// Pre Return
    if(PageControl->PageCount == 0) {
    	PrintMsg(L"There is no Pages");
        return;
    }

    // Get Selected Form
    TFormSub* p_SubForm = (TFormSub*)PageControl->ActivePage->Components[0]->Components[0];
    unsigned int t_ObjectType = SHAPE_CIRCLE; // Rectangle
    SendMessage(p_SubForm->Handle, MSG_CMD_DRAW_ITEM, t_ObjectType, 0x10);
}
//---------------------------------------------------------------------------

