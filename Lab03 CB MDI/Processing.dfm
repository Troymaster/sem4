object Form_processing: TForm_processing
  Left = 0
  Top = 0
  Caption = 'Process'
  ClientHeight = 240
  ClientWidth = 495
  Color = clBtnFace
  Constraints.MinHeight = 220
  Constraints.MinWidth = 460
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Menu = MainMenu
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = Form_processing_Close
  OnCreate = FormCreate
  OnResize = Form_processing_Resize
  PixelsPerInch = 96
  TextHeight = 13
  object RowLabel: TLabel
    Left = 14
    Top = 34
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
    Left = 21
    Top = 62
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
    Width = 55
    Height = 13
    Caption = 'Title fo task'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object SelectedRow: TLabel
    Left = 172
    Top = 34
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
    Top = 87
    Width = 479
    Height = 145
    FixedColor = clGray
    RowCount = 4
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
    OnKeyPress = SG1KeyPress
  end
  object Button_apply: TButton
    Left = 307
    Top = 56
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
    Left = 50
    Top = 34
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
    Left = 50
    Top = 59
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
    Left = 172
    Top = 59
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
    Left = 307
    Top = 29
    Width = 127
    Height = 25
    Caption = 'Fill random values'
    TabOrder = 5
    OnClick = Button_fillrandClick
  end
  object MainMenu: TMainMenu
    Left = 448
    Top = 8
    object JustNothing1: TMenuItem
      Caption = 'JustNothing'
      GroupIndex = 15
      OnClick = JustNothing1Click
    end
  end
end
