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
	static int s_PageNumbering = 1;
    UnicodeString tempStr = L"";

    tempStr.sprintf(L"New Page %02d", s_PageNumbering++);
	NotebookTab_Main->Pages->Add(tempStr);

    tempStr.sprintf(L"Current Page Index : %d", NotebookTab_Main->PageIndex);
    PrintMsg(tempStr);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_DeleteClick(TObject *Sender)
{
	// Common
    UnicodeString tempStr = L"";
    int t_TabCount = NotebookTab_Main->Pages->Count;

    // Pre-Return
    if(t_TabCount == 0) {
     	tempStr.sprintf(L"There is no Pages");
        PrintMsg(tempStr);
        return;
    }

    int t_Idx = NotebookTab_Main->PageIndex;

    // Remove Routine
	//NotebookTab_Main->Pages->BeginUpdate();

    if(t_Idx == 0 && t_TabCount >= 2) {
    	NotebookTab_Main->PageIndex = 1;
    } else {
    	NotebookTab_Main->PageIndex = t_Idx - 1;
    }

	NotebookTab_Main->Pages->Delete(t_Idx);
    //NotebookTab_Main->Pages->EndUpdate();

    tempStr.sprintf(L"Page %d is removed", t_Idx);
    PrintMsg(tempStr);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::NotebookTab_MainClick(TObject *Sender)
{
	UnicodeString tempStr = L"";
    tempStr.sprintf(L"Current Page Index : %d", NotebookTab_Main->PageIndex);
    PrintMsg(tempStr);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_TestClick(TObject *Sender)
{
	NotebookTab_Main->PageIndex = -1;

	UnicodeString tempStr = L"";
    tempStr.sprintf(L"Current Page Index : %d", NotebookTab_Main->PageIndex);
    PrintMsg(tempStr);
}
//---------------------------------------------------------------------------
