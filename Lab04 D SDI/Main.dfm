object FormMain: TFormMain
  Left = 569
  Top = 354
  Caption = 'Lab04'
  ClientHeight = 54
  ClientWidth = 207
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu: TMainMenu
    Left = 353
    Top = 239
    object File1: TMenuItem
      Caption = 'File'
      object Exit: TMenuItem
        Caption = 'Exit'
        OnClick = ExitClick
      end
    end
    object Task: TMenuItem
      Caption = 'Task'
      object Parameters: TMenuItem
        Caption = 'Parameters'
        OnClick = ParametersClick
      end
      object Processing: TMenuItem
        Caption = 'Processing'
        OnClick = ProcessingClick
      end
    end
    object Help: TMenuItem
      Caption = 'Help'
      object About: TMenuItem
        Caption = 'About'
        OnClick = AboutClick
      end
    end
  end
end
