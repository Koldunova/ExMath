object Form13: TForm13
  Left = 0
  Top = 0
  Caption = 'Form13'
  ClientHeight = 346
  ClientWidth = 354
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 208
    Width = 214
    Height = 27
    Caption = #1055#1088#1072#1074#1080#1083#1100#1085#1099#1093' '#1086#1090#1074#1077#1090#1086#1074':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Luminari'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 241
    Width = 217
    Height = 27
    Caption = #1055#1088#1086#1075#1088#1077#1089#1089'  '#1079#1072' '#1101#1090#1086#1090' '#1090#1077#1089#1090':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Luminari'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 89
    Top = 8
    Width = 150
    Height = 27
    Caption = #1042#1072#1096' '#1088#1077#1079#1091#1083#1100#1090#1072#1090':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Luminari'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 231
    Top = 208
    Width = 5
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Luminari'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 231
    Top = 241
    Width = 5
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Luminari'
    Font.Style = []
    ParentFont = False
  end
  object Image1: TImage
    Left = 215
    Top = 280
    Width = 110
    Height = 51
    OnClick = Image1Click
  end
  object Label6: TLabel
    Left = 8
    Top = 17
    Width = 31
    Height = 13
    Caption = 'Label6'
  end
  object ListBox1: TListBox
    Left = 101
    Top = 49
    Width = 121
    Height = 153
    ItemHeight = 13
    TabOrder = 0
  end
  object ADOTable1: TADOTable
    Connection = Form1.con1
    Left = 304
    Top = 16
  end
end
