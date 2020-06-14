//---------------------------------------------------------------------------

#ifndef mainH
#define mainH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Menus.hpp>
#include <Vcl.Grids.hpp>
//---------------------------------------------------------------------------
class TForm_main : public TForm
{
__published:	// IDE-managed Components
	TMainMenu *MainMenu;
	TMenuItem *About;
	TMenuItem *Task;
	TGroupBox *GroupBox_Parameters;
	TLabel *Label_rows;
	TLabel *Label_cols;
	TEdit *Edit_rows;
	TEdit *Edit_cols;
	TButton *Button_rand_matrix;
	TGroupBox *GroupBox_Result;
	TButton *Button_apply;
	TLabel *Label_answer;
	TEdit *Edit_answer;
	TStringGrid *StringGrid;
	TButton *Button_rand_size;
	TButton *Button_clear;
	void __fastcall Button_applyClick(TObject *Sender);
	void __fastcall Form_main_Resize(TObject *Sender);
	void __fastcall Edit_rows_change(TObject *Sender);
	void __fastcall Edit_cols_change(TObject *Sender);
	void __fastcall Button_rand_matrixClick(TObject *Sender);
	void __fastcall Button_rand_sizeClick(TObject *Sender);
	void __fastcall StringGrid_KeyPress(TObject *Sender, System::WideChar &Key);
	void __fastcall Button_clearClick(TObject *Sender);
	void __fastcall MainMenu_Tast_Click(TObject *Sender);
	void __fastcall AboutClick(TObject *Sender);

private:	// User declarations
public:		// User declarations
	__fastcall TForm_main(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm_main *Form_main;
//---------------------------------------------------------------------------
#endif
