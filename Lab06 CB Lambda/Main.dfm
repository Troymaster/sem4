object Form_main: TForm_main
  Left = 0
  Top = 0
  Caption = 'Lab06'
  ClientHeight = 343
  ClientWidth = 477
  Color = clBtnFace
  Constraints.MinHeight = 390
  Constraints.MinWidth = 450
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  DesignSize = (
    477
    343)
  PixelsPerInch = 96
  TextHeight = 13
  object SG_I: TStringGrid
    Left = 8
    Top = 8
    Width = 306
    Height = 148
    Anchors = [akLeft, akTop, akRight]
    ColCount = 4
    DefaultRowHeight = 17
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 0
  end
  object GB_Input: TGroupBox
    Left = 320
    Top = 8
    Width = 149
    Height = 249
    Anchors = [akTop, akRight]
    Caption = 'Input Data'
    TabOrder = 1
    object Label_Country: TLabel
      Left = 8
      Top = 16
      Width = 133
      Height = 13
      Caption = 'Country'
    end
    object Label_Park: TLabel
      Left = 8
      Top = 62
      Width = 133
      Height = 13
      Caption = 'Park'
    end
    object Label_Animals: TLabel
      Left = 8
      Top = 108
      Width = 133
      Height = 13
      Caption = 'Animals amount'
    end
    object Edit_Country: TEdit
      Left = 8
      Top = 35
      Width = 133
      Height = 21
      TabOrder = 0
    end
    object Edit_Park: TEdit
      Left = 8
      Top = 81
      Width = 133
      Height = 21
      TabOrder = 1
    end
    object Button_Process: TButton
      Left = 8
      Top = 185
      Width = 133
      Height = 25
      Caption = 'Process'
      TabOrder = 2
      OnClick = Button_ProcessClick
    end
    object Button_Add: TButton
      Left = 8
      Top = 154
      Width = 133
      Height = 25
      Caption = 'Add'
      TabOrder = 3
      OnClick = Button_AddClick
    end
    object Button_ClearList: TButton
      Left = 74
      Top = 216
      Width = 67
      Height = 25
      Caption = 'Clear list'
      TabOrder = 4
      OnClick = Button_ClearListClick
    end
    object Button_ClearInput: TButton
      Left = 8
      Top = 216
      Width = 67
      Height = 25
      Caption = 'Clear Input'
      TabOrder = 5
      OnClick = Button_ClearInputClick
    end
    object Edit_Animals: TEdit
      Left = 8
      Top = 127
      Width = 133
      Height = 21
      TabOrder = 6
      OnKeyPress = Edit_Animals_KeyPress
    end
  end
  object SG_O: TStringGrid
    Left = 8
    Top = 162
    Width = 306
    Height = 175
    Anchors = [akLeft, akTop, akRight]
    ColCount = 3
    DefaultRowHeight = 17
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 2
    Visible = False
  end
  object RG_ListType: TRadioGroup
    Left = 320
    Top = 263
    Width = 149
    Height = 74
    Anchors = [akTop, akRight]
    Caption = 'Output list type'
    ItemIndex = 0
    Items.Strings = (
      'Country - parks amount'
      'Most important parks')
    TabOrder = 3
  end
  object MainMenu: TMainMenu
    Left = 72
    Top = 240
    object File1: TMenuItem
      Caption = 'File'
      object Load1: TMenuItem
        Caption = 'Load'
        OnClick = LoadClick
      end
      object Exit: TMenuItem
        Caption = 'Exit'
        OnClick = ExitClick
      end
    end
    object Help: TMenuItem
      Caption = 'Help'
      object About: TMenuItem
        Caption = 'About'
        OnClick = AboutClick
      end
      object Task: TMenuItem
        Caption = 'Task'
        OnClick = TaskClick
      end
    end
  end
end
