object Form12: TForm12
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074
  ClientHeight = 451
  ClientWidth = 733
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 304
    Top = 336
    Width = 31
    Height = 13
    Caption = 'Label4'
    Visible = False
  end
  object tests: TGroupBox
    Left = 10
    Top = 16
    Width = 713
    Height = 353
    Caption = #1058#1077#1089#1090#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4664874
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 287
      Top = 22
      Width = 75
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1074#1086#1087#1088#1086#1089#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4664874
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 464
      Top = 22
      Width = 96
      Height = 13
      Caption = #1055#1088#1072#1074#1080#1083#1100#1085#1099#1081' '#1086#1090#1074#1077#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4664874
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBGrid2: TDBGrid
      Left = 3
      Top = 22
      Width = 270
      Height = 272
      DataSource = DataSource3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid2CellClick
      OnEnter = DBGrid2Enter
      Columns = <
        item
          Expanded = False
          FieldName = 'name'
          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          Visible = True
        end>
    end
    object ComboBox2: TComboBox
      Left = 279
      Top = 41
      Width = 145
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = ' '
      OnChange = ComboBox2Change
    end
    object Edit1: TEdit
      Left = 464
      Top = 41
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBImage2: TDBImage
      Left = 279
      Top = 68
      Width = 410
      Height = 226
      DataSource = DataSource4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4664874
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Stretch = True
      TabOrder = 3
      Visible = False
    end
    object Button3: TButton
      Left = 608
      Top = 37
      Width = 75
      Height = 25
      Caption = #1055#1088#1080#1085#1103#1090#1100
      TabOrder = 4
      OnClick = Button3Click
    end
    object Button5: TButton
      Left = 560
      Top = 325
      Width = 115
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1090#1077#1089#1090
      TabOrder = 5
      OnClick = Button5Click
    end
  end
  object book: TGroupBox
    Left = 8
    Top = 16
    Width = 713
    Height = 353
    Caption = #1050#1085#1080#1075#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 247
      Top = 241
      Width = 87
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1089#1090#1088#1072#1085#1080#1094#1099':'
    end
    object DBGrid1: TDBGrid
      Left = 6
      Top = 22
      Width = 211
      Height = 288
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = #1050#1086#1076
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'name'
          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'raz1'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'raz2'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'raz3'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'raz4'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'raz5'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'raz6'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'raz7'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'raz8'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'raz9'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'raz10'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'kol'
          Visible = False
        end>
    end
    object ComboBox1: TComboBox
      Left = 247
      Top = 260
      Width = 145
      Height = 21
      TabOrder = 1
      Text = ' '
      OnChange = ComboBox1Change
    end
    object DBImage1: TDBImage
      Left = 223
      Top = 22
      Width = 487
      Height = 213
      DataSource = DataSource2
      Stretch = True
      TabOrder = 2
      Visible = False
    end
    object Button2: TButton
      Left = 415
      Top = 248
      Width = 98
      Height = 46
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 534
      Top = 248
      Width = 91
      Height = 46
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button4: TButton
      Left = 592
      Top = 316
      Width = 107
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1091#1095#1077#1073#1085#1080#1082
      TabOrder = 5
      OnClick = Button4Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 224
    Top = 336
    object N1: TMenuItem
      Caption = #1052#1072#1090#1077#1088#1080#1072#1083#1099
      object N2: TMenuItem
        Caption = #1058#1077#1086#1088#1080#1103
        Checked = True
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1058#1077#1089#1090#1099
        OnClick = N3Click
      end
    end
  end
  object ADOTable1: TADOTable
    Connection = Form1.con1
    CursorType = ctStatic
    TableName = 'books_name'
    Left = 96
    Top = 328
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 8
    Top = 328
  end
  object ADOTable2: TADOTable
    Connection = Form1.con1
    CursorType = ctStatic
    TableName = 'book'
    Left = 56
    Top = 328
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 176
    Top = 336
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 136
    Top = 380
  end
  object ADOTable3: TADOTable
    Connection = Form1.con1
    CursorType = ctStatic
    TableName = 'times'
    Left = 8
    Top = 384
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 56
    Top = 384
  end
  object ADOTable4: TADOTable
    Active = True
    Connection = Form1.con1
    CursorType = ctStatic
    TableName = 'task'
    Left = 536
    Top = 368
  end
  object DataSource4: TDataSource
    DataSet = ADOTable4
    Left = 632
    Top = 368
  end
  object ADOTable5: TADOTable
    Active = True
    Connection = Form1.con1
    CursorType = ctStatic
    TableName = 'anser'
    Left = 688
    Top = 328
  end
end
