object Form_processing: TForm_processing
  Left = 0
  Top = 0
  Caption = 'Process'
  ClientHeight = 332
  ClientWidth = 512
  Color = clBtnFace
  Constraints.MinHeight = 300
  Constraints.MinWidth = 474
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnResize = Form_processing_Resize
  PixelsPerInch = 96
  TextHeight = 13
  object RowLabel: TLabel
    Left = 22
    Top = 50
    Width = 30
    Height = 13
    Caption = 'Rows:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ColLabel: TLabel
    Left = 29
    Top = 78
    Width = 23
    Height = 13
    Caption = 'Cols:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object TextProg: TLabel
    Left = 8
    Top = 8
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object SelectedRow: TLabel
    Left = 180
    Top = 50
    Width = 70
    Height = 13
    Caption = 'Selected Row:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object SG1: TStringGrid
    Left = 8
    Top = 103
    Width = 496
    Height = 221
    RowCount = 4
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
    OnKeyPress = SG1KeyPress
  end
  object Button_apply: TButton
    Left = 315
    Top = 72
    Width = 127
    Height = 25
    Cursor = crHandPoint
    Caption = 'Processing'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button_applyClick
  end
  object CRowEdit: TCSpinEdit
    Left = 58
    Top = 47
    Width = 80
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxValue = 1000
    MinValue = 1
    ParentFont = False
    TabOrder = 2
    Value = 3
    OnChange = CRowEditChange
  end
  object CColEdit: TCSpinEdit
    Left = 58
    Top = 75
    Width = 80
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxValue = 1000
    MinValue = 1
    ParentFont = False
    TabOrder = 3
    Value = 4
    OnChange = CColEditChange
  end
  object CSelectedRowEdit: TCSpinEdit
    Left = 180
    Top = 75
    Width = 80
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxValue = 100
    MinValue = 1
    ParentFont = False
    TabOrder = 4
    Value = 1
  end
  object Button_fillrand: TButton
    Left = 315
    Top = 41
    Width = 127
    Height = 25
    Caption = 'Fill random values'
    TabOrder = 5
    OnClick = Button_fillrandClick
  end
end
