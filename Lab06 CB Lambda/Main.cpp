//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Main.h"
#include "About.h"
#include "Task.h"
#include "BookDeclaration.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm_main *Form_main;
TBook book;
//---------------------------------------------------------------------------
__fastcall TForm_main::TForm_main(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm_main::FormCreate(TObject *Sender)
{
	SG_I->Cells[0][0]="№";
	SG_I->ColWidths[0] = 24;
	SG_I->Cells[1][0]="Country";
	SG_I->Cells[2][0]="Park";
	SG_I->Cells[3][0]="Animal types";

	SG_O->Cells[0][0]="№";
	SG_O->ColWidths[0] = 24;
}
//---------------------------------------------------------------------------

void __fastcall TForm_main::FormResize(TObject *Sender)
{
	SG_I->ColWidths[1] = (SG_I->ClientWidth - SG_I->ColWidths[0] - (SG_I->ColCount-1)*SG_I->GridLineWidth)/(SG_I->ColCount-1);
	SG_I->ColWidths[2] = SG_I->ColWidths[1];
	SG_I->ColWidths[3] = SG_I->ColWidths[1];
	if (SG_O->Visible) {
		SG_I->Height = (ClientHeight-24)/2;

		SG_O->Top = SG_I->Top + SG_I->Height + 8;
		SG_O->Height = SG_I->Height;
		int width = (SG_O->ClientWidth - SG_O->ColWidths[0] - (SG_O->ColCount-1)*SG_I->GridLineWidth)/(SG_O->ColCount-1);
		for (short i=1; i<SG_O->ColCount; i++)
			SG_O->ColWidths[i] = width;
	} else {
		SG_I->Height = ClientHeight-16;
	}
}
//---------------------------------------------------------------------------

void TForm_main::Form_main_Clear(){
	for (int i = 1; i < Form_main->SG_I->RowCount; i++)
			Form_main->SG_I->Rows[i]->Clear();
	Form_main->SG_I->RowCount=1;
	for (int i = 1; i < Form_main->SG_O->RowCount; i++)
			Form_main->SG_O->Rows[i]->Clear();
	Form_main->SG_O->RowCount=1;
    book.data.clear();
}

//---------------------------------------------------------------------------
void __fastcall TForm_main::ExitClick(TObject *Sender) {
	Close();
}

// ---------------------------------------------------------------------------
void __fastcall TForm_main::AboutClick(TObject *Sender)
{
	AboutBox->Show();
}

void __fastcall TForm_main::TaskClick(TObject *Sender)
{
	TaskBox->Show();
}
//---------------------------------------------------------------------------

void __fastcall TForm_main::Button_AddClick(TObject *Sender)
{
	if (Edit_Country->Text!="" && Edit_Park->Text!="") {
		int CurRow = SG_I->RowCount++;
		book.data.push_back(TCountry(Edit_Country->Text,Edit_Park->Text,Edit_Animals->Text));
		SG_I->Cells[0][CurRow] = CurRow;
		SG_I->Cells[1][CurRow] = book.data.end()->country;
		SG_I->Cells[2][CurRow] = book.data.end()->park;
		SG_I->Cells[3][CurRow] = book.data.end()->animals;
	}
}
//---------------------------------------------------------------------------

void __fastcall TForm_main::Button_ClearInputClick(TObject *Sender)
{
	Edit_Country->Text="";
	Edit_Park->Text="";
	Edit_Animals->Text="";
}

void __fastcall TForm_main::Button_ClearListClick(TObject *Sender)
{
	SG_O->Visible=false;
	FormResize(this);
	Form_main_Clear();
}
//---------------------------------------------------------------------------

void __fastcall TForm_main::Button_ProcessClick(TObject *Sender)
{
	if (false)
		ShowMessage("List is empty.\nPlease, add some data first!");
	else {
		SG_O->Visible=true;
		FormResize(this);
		switch (RG_ListType->ItemIndex) {
			case 0:	// Country - parks
				SG_O->Cells[1][0]="Country";
				SG_O->Cells[2][0]="Parks amount";
				break;
			case 1:	// Most important parks
				SG_O->Cells[1][0]="Park";
				SG_O->Cells[2][0]="Animal types";
				break;
		}
    }
}
//---------------------------------------------------------------------------

void __fastcall TForm_main::Edit_Animals_KeyPress(TObject *Sender, System::WideChar &Key)

{
	if (!(Key >= '0' && Key <= '9') && (Key != VK_BACK) && (Key != VK_DELETE))
		Key = 0;
}
//---------------------------------------------------------------------------

void __fastcall TForm_main::LoadClick(TObject *Sender)
{
	ifstream file;
	string country,park,animals;
	int i=1;

	file.open("Data.txt");
	if (file.is_open()) {
		// load data from file to structure
		Form_main_Clear();
		while (!file.eof()) {
			getline(file,country,'|');
			getline(file,park,'|');
			getline(file,animals);
			book.data.push_back(TCountry(country,park,animals));
		}
		file.close();
		// load data from structure to StringGrid
		SG_I->RowCount=book.data.size()+1;
		for (list <TCountry>::iterator it = book.data.begin(); it != book.data.end(); ++it) {
			SG_I->Cells[0][i]=i;
			SG_I->Cells[1][i]=it->country;
			SG_I->Cells[2][i]=it->park;
			SG_I->Cells[3][i]=it->animals;
			i++;
		}
	} else ShowMessage("Error opening 'Data.txt'");
}
//---------------------------------------------------------------------------

