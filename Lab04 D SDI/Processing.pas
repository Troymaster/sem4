unit Processing;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.Samples.Spin;

type
  TForm_processing = class(TForm)
    SG1: TStringGrid;
  	Button_apply: TButton;
  	RowLabel: TLabel;
  	ColLabel: TLabel;
  	TextProg: TLabel;
  	SelectedRow: TLabel;
    CRowEdit: TSpinEdit;
    CColEdit: TSpinEdit;
    CSelectedRowEdit: TSpinEdit;
  	Button_fillrand: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button_fillrandClick(Sender: TObject);
    procedure Form_processing_Resize(Sender: TObject);
    procedure CColEditChange(Sender: TObject);
    procedure CRowEditChange(Sender: TObject);
    procedure SG1KeyPress(Sender: TObject; var Key: Char);
    procedure Button_apply_Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_processing: TForm_processing;
  n: integer;
  Row: integer=0;
  arr: array of integer;

implementation
Uses Main, Parameters, Output;
{$R *.dfm}

procedure TForm_processing.FormCreate(Sender: TObject);
var
  i:integer;
begin
  Form_processing.TextProg.Caption := 'Find amount and index of first negative element in selected row';
	SG1.ColCount := 5;
	for i:=1 to SG1.ColCount-1 do
		SG1.Cells[i, 0] := IntToStr(i);
	SG1.RowCount := 4;
	for i:=1 to SG1.RowCount-1 do
    SG1.Cells[0, i] := IntToStr(i);
end;

procedure TForm_processing.Form_processing_Resize(Sender: TObject);
begin
  SG1.Width := Form_processing.Width-33;
  SG1.Height := Form_processing.Height-150;
end;

procedure TForm_processing.SG1KeyPress(Sender: TObject; var Key: Char);
begin
if  not ((Key >= '0')  and  (Key <= '9'))
    and (Key <> '-')
    and (Key <> #8)       //8 = Backspace
    and (Key <> #46)      //46 = Delete
    then
      Key := Chr(0);
end;

procedure TForm_processing.Button_apply_Click(Sender: TObject);
var
  i, j, k: integer;
  elems: integer;
begin
  if not Assigned(Form_output) then Form_output := TForm_output.Create(Self);

  Row := CSelectedRowEdit.Value;
  for j := 1 to SG1.ColCount-1 do
    for i := 1 to SG1.RowCount-1 do
      if (SG1.Cells[j, i] = '')  or  (SG1.Cells[j, i] = '-') then SG1.Cells[j, i] := '0';

  for k := 1 to SG1.ColCount-1 do
    if SG1.Cells[k, Row].ToInteger()<0 then break;

  if (k<SG1.ColCount)  and  (Row<SG1.RowCount) then
    Form_output.Label_result.Caption := 'First negative element in '+IntToStr(Row)+' row is '+SG1.Cells[k, Row]+' with index '+IntToStr(k)
  else Form_output.Label_result.Caption := 'There are no negative elements in selected row';

  if Form_params.CB1.Checked then begin
    elems:=0;
    Setlength(arr, SG1.RowCount-1);
    for i := 1 to SG1.RowCount-1 do
      for j := 1 to SG1.ColCount-1 do
        if StrToInt(SG1.Cells[j, i]) > 0 then
          begin
            arr[elems] := StrToInt(SG1.Cells[j, i]);
            elems:=elems+1;
            break;
          end;
    Setlength(arr, elems);
    if  elems>0 then with Form_output.Label_add do begin
      Caption := 'Array from first positive element in each row is:';
      for i := 0 to elems-1 do begin
        if i mod 50=0 then
          Caption := Caption+#13#10;
        Caption := Caption+Format('%-3d',[arr[i]]);
      end;
      if elems <(SG1.RowCount-1) then
        Caption := Caption+#13#10'Not all rows contains positive elements.';
    end
    else Form_output.Label_add.Caption := 'There are no positive elements';
    Form_output.ClientHeight:=90+Form_output.Label_add.ClientHeight;
    Form_output.ClientWidth:=100+Form_output.Label_add.ClientWidth;
    Form_output.Label_add.Visible := true;
    Form_output.Label_add_title.Visible := true;
    Finalize(arr);
  end
  else
  begin
    Form_output.ClientHeight:=60;
    Form_output.ClientWidth:=350;
    Form_output.Label_add_title.Visible := false;
    Form_output.Label_add.Visible := false;
  end;
  Form_output.Show();
end;

procedure TForm_processing.Button_fillrandClick(Sender: TObject);
var
  j, i : integer;
begin
  randomize;
  for j := 1 to SG1.ColCount-1 do
    for i := 1 to SG1.RowCount-1 do
        SG1.Cells[j, i] := (random(101)-50).ToString();
end;

procedure TForm_processing.CColEditChange(Sender: TObject);
var
  n, i : integer;
begin
  n := CColEdit.Value;
  SG1.ColCount := n + 1;
  for i := 1 to SG1.ColCount-1 do
    SG1.Cells[i, 0] := i.ToString();
end;

procedure TForm_processing.CRowEditChange(Sender: TObject);
var
  n, i : integer;
begin
  n := CRowEdit.Value;
  SG1.RowCount := n + 1;
  for i := 1 to SG1.RowCount-1 do
    SG1.Cells[0, i] := i.ToString();
end;

procedure TForm_processing.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormMain.Processing.enabled:=true;
  action:=cafree;
end;

End.
