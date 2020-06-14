unit Output;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm_output = class(TForm)
    Label_result_title: TLabel;
    Label_result: TLabel;
    Label_add_title: TLabel;
    Label_add: TLabel;
    OKButton: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OKButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_output: TForm_output;

implementation

{$R *.dfm}

procedure TForm_output.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  Form_output:=nil;
end;

procedure TForm_output.OKButtonClick(Sender: TObject);
begin
  Close();
end;

end.
