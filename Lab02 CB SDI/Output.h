//---------------------------------------------------------------------------

#ifndef OutputH
#define OutputH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
//---------------------------------------------------------------------------
class TForm_output : public TForm
{
__published:	// IDE-managed Components
	TLabel *Label_result_title;
	TLabel *Label_result;
	TLabel *Label_add_title;
	TLabel *Label_add;
	TButton *OKButton;
	void __fastcall OKButtonClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm_output(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm_output *Form_output;
//---------------------------------------------------------------------------
#endif
