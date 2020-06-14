// ---------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "About.h"
#include "Main.h"
// ---------------------------------------------------------------------
#pragma resource "*.dfm"
TAboutBox *AboutBox;

// ---------------------------------------------------------------------
__fastcall TAboutBox::TAboutBox(TComponent* AOwner) : TForm(AOwner) {
}

// ---------------------------------------------------------------------
void __fastcall TAboutBox::OKButtonClick(TObject *Sender) {
	Close();
}
// ---------------------------------------------------------------------------

void __fastcall TAboutBox::AboutBox_Close(TObject *Sender, TCloseAction &Action)
{
	Form_main->About->Enabled = true;
	Action = caFree;
}
// ---------------------------------------------------------------------------
