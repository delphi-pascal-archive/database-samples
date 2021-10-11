object Form1: TForm1
  Left = 192
  Top = 121
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1060#1080#1083#1100#1090#1088#1072#1094#1080#1103' '#1087#1086' '#1076#1080#1072#1087#1072#1079#1086#1085#1091
  ClientHeight = 245
  ClientWidth = 582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00CCC0
    000CCCC0000000000CCCC7777CCCCCCC0000CCCC00000000CCCC7777CCCCCCCC
    C0000CCCCCCCCCCCCCC7777CCCCC0CCCCC0000CCCCCCCCCCCC7777CCCCC700CC
    C00CCCC0000000000CCCC77CCC77000C0000CCCC00000000CCCC7777C7770000
    00000CCCC000000CCCC777777777C000C00000CCCC0000CCCC77777C777CCC00
    CC00000CCCCCCCCCC77777CC77CCCCC0CCC000CCCCC00CCCCC777CCC7CCCCCCC
    CCCC0CCCCCCCCCCCCCC7CCCCCCCCCCCC0CCCCCCCCCCCCCCCCCCCCCC7CCC70CCC
    00CCCCCCCC0CC0CCCCCCCC77CC7700CC000CCCCCC000000CCCCCC777CC7700CC
    0000CCCC00000000CCCC7777CC7700CC0000C0CCC000000CCC7C7777CC7700CC
    0000C0CCC000000CCC7C7777CC7700CC0000CCCC00000000CCCC7777CC7700CC
    000CCCCCC000000CCCCCC777CC7700CC00CCCCCCCC0CC0CCCCCCCC77CC770CCC
    0CCCCCCCCCCCCCCCCCCCCCC7CCC7CCCCCCCC0CCCCCCCCCCCCCC7CCCCCCCCCCC0
    CCC000CCCCC00CCCCC777CCC7CCCCC00CC00000CCCCCCCCCC77777CC77CCC000
    C00000CCCC0000CCCC77777C777C000000000CCCC000000CCCC777777777000C
    0000CCCC00000000CCCC7777C77700CCC00CCCC0000000000CCCC77CCC770CCC
    CC0000CCCCCCCCCCCC7777CCCCC7CCCCC0000CCCCCCCCCCCCCC7777CCCCCCCCC
    0000CCCC00000000CCCC7777CCCCCCC0000CCCC0000000000CCCC7777CCC0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 192
    Top = 184
    Width = 28
    Height = 16
    Caption = 'Age:'
  end
  object Bevel1: TBevel
    Left = 304
    Top = 168
    Width = 9
    Height = 73
    Shape = bsLeftLine
  end
  object Label2: TLabel
    Left = 320
    Top = 184
    Width = 77
    Height = 16
    Caption = #1042#1086#1079#1088#1072#1089#1090' '#1086#1090
  end
  object Label3: TLabel
    Left = 480
    Top = 184
    Width = 17
    Height = 16
    Caption = #1076#1086
  end
  object Button1: TButton
    Left = 8
    Top = 176
    Width = 105
    Height = 25
    Caption = #1055#1086' '#1087#1086#1083#1102' Age'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 561
    Height = 153
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 8
    Top = 208
    Width = 281
    Height = 25
    Caption = #1055#1086' '#1087#1086#1083#1103#1084' Name '#1080' Age ('#1086#1090' '#39#1040#39' '#1076#1086' '#39#1045#39')'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 232
    Top = 176
    Width = 57
    Height = 24
    TabOrder = 3
    Text = '16'
  end
  object Button3: TButton
    Left = 320
    Top = 208
    Width = 107
    Height = 25
    Caption = #1060#1080#1083#1100#1090#1088#1086#1074#1072#1090#1100
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 464
    Top = 208
    Width = 107
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 5
    OnClick = Button4Click
  end
  object Edit2: TEdit
    Left = 408
    Top = 176
    Width = 49
    Height = 24
    TabOrder = 6
    Text = '17'
  end
  object Edit3: TEdit
    Left = 520
    Top = 176
    Width = 49
    Height = 24
    TabOrder = 7
    Text = '20'
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'My_Data'
    TableName = 'Sort.db'
    Left = 32
    Top = 56
    object Table1Code: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object Table1Name: TStringField
      FieldName = 'Name'
    end
    object Table1Age: TIntegerField
      FieldName = 'Age'
    end
    object Table1City: TStringField
      FieldName = 'City'
    end
    object Table1Population: TIntegerField
      FieldName = 'Population'
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 32
    Top = 88
  end
end
