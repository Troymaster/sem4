object TaskBox: TTaskBox
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Task'
  ClientHeight = 98
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    400
    98)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 108
    Height = 13
    Caption = 'List item structure:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 122
    Top = 8
    Width = 193
    Height = 13
    Caption = 'Country - Park - Amount of animal types'
  end
  object Label3: TLabel
    Left = 8
    Top = 27
    Width = 188
    Height = 13
    Caption = '1) Output list "Country - Parks amount"'
  end
  object Label4: TLabel
    Left = 8
    Top = 46
    Width = 378
    Height = 13
    Caption = 
      '2) Output list of most importatant parks (parks with highest amo' +
      'unt of animals)'
  end
  object Button_OK: TButton
    Left = 317
    Top = 65
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    TabOrder = 0
    OnClick = Button_OKClick
    ExplicitLeft = 314
  end
end
