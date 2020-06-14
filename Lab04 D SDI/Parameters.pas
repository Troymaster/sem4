unit Parameters;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm_params = class(TForm)
    CB1: TCheckBox;
    Panel: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_params: TForm_params;

implementation
Uses Main;
{$R *.dfm}

procedure TForm_params.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormMain.Parameters.enabled:=true;
  action:=cafree;
end;

end.
