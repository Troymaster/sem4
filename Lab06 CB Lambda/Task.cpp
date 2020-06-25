//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Task.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TTaskBox *TaskBox;
//---------------------------------------------------------------------------
__fastcall TTaskBox::TTaskBox(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TTaskBox::Button_OKClick(TObject *Sender)
{
    Close();
}
//---------------------------------------------------------------------------

