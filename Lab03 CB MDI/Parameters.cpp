// ---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Parameters.h"
#include "Main.h"
// ---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm_params *Form_params;
extern cb;

// ---------------------------------------------------------------------------
__fastcall TForm_params::TForm_params(TComponent* Owner) : TForm(Owner) {
}
// ---------------------------------------------------------------------------

void __fastcall TForm_params::CB1Click(TObject *Sender) {
	cb = CB1->Checked;
}
// ---------------------------------------------------------------------------

void __fastcall TForm_params::Form_params_Create(TObject *Sender) {
	CB1->Checked = cb;
}
// ---------------------------------------------------------------------------

void __fastcall TForm_params::Form_params_Close(TObject *Sender,
	TCloseAction &Action) {
	Form_main->Parameters->Enabled = true;
	Action = caFree;
}
// ---------------------------------------------------------------------------
