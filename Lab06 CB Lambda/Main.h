//---------------------------------------------------------------------------

#ifndef MainH
#define MainH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.Menus.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <fstream>
#include <stdio.h>
//---------------------------------------------------------------------------
class TForm_main : public TForm
{
__published:	// IDE-managed Components
	TMainMenu *MainMenu;
	TMenuItem *Load1;
	TMenuItem *Help;
	TMenuItem *Task;
	TStringGrid *SG_I;
	TStringGrid *SG_O;
	TGroupBox *GB_Input;
	TLabel *Label_Country;
	TLabel *Label_Park;
	TLabel *Label_Animals;
	TEdit *Edit_Country;
	TEdit *Edit_Park;
	TEdit *Edit_Animals;
	TButton *Button_Add;
	TButton *Button_Process;
	TButton *Button_ClearInput;
	TButton *Button_ClearList;
	TRadioGroup *RG_ListType;

	void __fastcall FormCreate(TObject *Sender);
	void __fastcall FormResize(TObject *Sender);
	void __fastcall ExitClick(TObject *Sender);
	void __fastcall AboutClick(TObject *Sender);
	void __fastcall TaskClick(TObject *Sender);
	void __fastcall Button_AddClick(TObject *Sender);
	void __fastcall Button_ProcessClick(TObject *Sender);
	void __fastcall Button_ClearInputClick(TObject *Sender);
	void __fastcall Button_ClearListClick(TObject *Sender);
	void __fastcall Edit_Animals_KeyPress(TObject *Sender, System::WideChar &Key);
	void __fastcall LoadClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm_main(TComponent* Owner);
	void Form_main_Clear();
};
//---------------------------------------------------------------------------
extern PACKAGE TForm_main *Form_main;
//---------------------------------------------------------------------------
#endif
