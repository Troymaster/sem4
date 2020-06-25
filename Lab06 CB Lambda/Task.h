//---------------------------------------------------------------------------

#ifndef TaskH
#define TaskH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
//---------------------------------------------------------------------------
class TTaskBox : public TForm
{
__published:	// IDE-managed Components
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TButton *Button_OK;
	void __fastcall Button_OKClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TTaskBox(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TTaskBox *TaskBox;
//---------------------------------------------------------------------------
#endif
