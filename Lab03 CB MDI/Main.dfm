object Form_main: TForm_main
  Left = 165
  Top = 62
  Caption = 'Lab02'
  ClientHeight = 403
  ClientWidth = 675
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = Form_main_Create
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu: TMainMenu
    Left = 117
    Top = 65535
    object File: TMenuItem
      Caption = 'File'
      GroupIndex = 10
      object Exit: TMenuItem
        Caption = 'Exit'
        OnClick = ExitClick
      end
    end
    object Task: TMenuItem
      Caption = 'Task'
      GroupIndex = 20
      object Parameters: TMenuItem
        Caption = 'Parameters'
        OnClick = ParametersClick
      end
      object Processing: TMenuItem
        Caption = 'Processing'
        OnClick = ProcessingClick
      end
      object Output: TMenuItem
        Caption = 'Output'
        OnClick = OutputClick
      end
    end
    object Windows1: TMenuItem
      Caption = 'Windows'
      GroupIndex = 30
      object Cascade1: TMenuItem
        Caption = 'Cascade'
        OnClick = Cascade1Click
      end
      object ile1: TMenuItem
        Caption = 'Tile'
        OnClick = ile1Click
      end
      object CloseCurrent1: TMenuItem
        Caption = 'Close Current'
        OnClick = CloseCurrent1Click
      end
      object CloseAll1: TMenuItem
        Caption = 'Close All'
        OnClick = CloseAll1Click
      end
      object MinimizeAll1: TMenuItem
        Caption = 'Minimize All'
        OnClick = MinimizeAll1Click
      end
      object Next1: TMenuItem
        Caption = 'Next'
        OnClick = Next1Click
      end
      object Previuos1: TMenuItem
        Caption = 'Previuos'
        OnClick = Previuos1Click
      end
    end
    object Help: TMenuItem
      Caption = 'Help'
      GroupIndex = 40
      object About: TMenuItem
        Caption = 'About'
        OnClick = AboutClick
      end
    end
  end
end
