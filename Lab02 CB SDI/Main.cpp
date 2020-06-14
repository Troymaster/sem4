//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Main.h"
#include "Processing.h"
#include "ABOUT.h"
#include "Parameters.h"
#include "Output.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm_main *Form_main;
int k = 0;
//---------------------------------------------------------------------------
__fastcall TForm_main::TForm_main(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm_main::ExitClick(TObject *Sender)
{
	Close();
}
//---------------------------------------------------------------------------
void __fastcall TForm_main::ProcessingClick(TObject *Sender)
{
	Form_processing->Show();
	k = 1;
}
//---------------------------------------------------------------------------
void __fastcall TForm_main::AboutClick(TObject *Sender)
{
	AboutBox->ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TForm_main::ParametersClick(TObject *Sender)
{
	Form_params->Show();
	Form_params->Top = 50;
	Form_params->Left = 10;
}
//---------------------------------------------------------------------------

void __fastcall TForm_main::OutputClick(TObject *Sender)
{
	if (k == 0)
		ShowMessage("There was no any data to process entered");
	else
		Form_output->Show();
}
//---------------------------------------------------------------------------


