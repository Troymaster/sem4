//---------------------------------------------------------------------------

#ifndef ProcessingH
#define ProcessingH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Grids.hpp>
#include "cspin.h"
//---------------------------------------------------------------------------
class TForm_processing : public TForm
{
__published:	// IDE-managed Components
	TStringGrid *SG1;
	TButton *Button_apply;
	TLabel *RowLabel;
	TLabel *ColLabel;
	TLabel *TextProg;
	TLabel *SelectedRow;
	TCSpinEdit *CRowEdit;
	TCSpinEdit *CColEdit;
	TCSpinEdit *CSelectedRowEdit;
	TButton *Button_fillrand;
	void __fastcall Button_applyClick(TObject *Sender);
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall SG1KeyPress(TObject *Sender, System::WideChar &Key);
	void __fastcall CRowEditChange(TObject *Sender);
	void __fastcall CColEditChange(TObject *Sender);
	void __fastcall Form_processing_Resize(TObject *Sender);
	void __fastcall Button_fillrandClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm_processing(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm_processing *Form_processing;
//---------------------------------------------------------------------------
#endif
