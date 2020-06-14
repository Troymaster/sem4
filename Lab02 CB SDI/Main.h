//---------------------------------------------------------------------------

#ifndef MainH
#define MainH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Menus.hpp>
//---------------------------------------------------------------------------
class TForm_main : public TForm
{
__published:	// IDE-managed Components
	TMainMenu *MainMenu;
	TMenuItem *File;
	TMenuItem *Exit;
	TMenuItem *Task;
	TMenuItem *Parameters;
	TMenuItem *Processing;
	TMenuItem *Help;
	TMenuItem *About;
	TMenuItem *Output;
	void __fastcall ExitClick(TObject *Sender);
	void __fastcall ProcessingClick(TObject *Sender);
	void __fastcall AboutClick(TObject *Sender);
	void __fastcall ParametersClick(TObject *Sender);
	void __fastcall OutputClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm_main(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm_main *Form_main;
//---------------------------------------------------------------------------
#endif
