//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Output.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm_output *Form_output;
//---------------------------------------------------------------------------
__fastcall TForm_output::TForm_output(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm_output::OKButtonClick(TObject *Sender)
{
    Close();
}
//---------------------------------------------------------------------------

