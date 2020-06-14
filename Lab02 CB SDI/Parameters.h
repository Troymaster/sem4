//---------------------------------------------------------------------------

#ifndef ParametersH
#define ParametersH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TForm_params : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel;
	TCheckBox *CB1;
private:	// User declarations
public:		// User declarations
	__fastcall TForm_params(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm_params *Form_params;
//---------------------------------------------------------------------------
#endif
