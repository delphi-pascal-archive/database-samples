object Form1: TForm1
  Left = 198
  Top = 129
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Editing records, Svjazannie tables, Transaction'
  ClientHeight = 520
  ClientWidth = 742
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
  PixelsPerInch = 120
  TextHeight = 16
  object Bevel1: TBevel
    Left = 120
    Top = 144
    Width = 9
    Height = 25
    Shape = bsLeftLine
  end
  object Bevel2: TBevel
    Left = 344
    Top = 144
    Width = 9
    Height = 25
    Shape = bsLeftLine
  end
  object Bevel3: TBevel
    Left = 16
    Top = 240
    Width = 273
    Height = 9
    Shape = bsTopLine
  end
  object Bevel4: TBevel
    Left = 136
    Top = 200
    Width = 9
    Height = 25
    Shape = bsLeftLine
  end
  object Label1: TLabel
    Left = 152
    Top = 208
    Width = 115
    Height = 16
    Caption = #1055#1088#1080#1084#1077#1088' - '#1089#1090#1088'. 615'
  end
  object Bevel5: TBevel
    Left = 280
    Top = 200
    Width = 9
    Height = 25
    Shape = bsLeftLine
  end
  object Bevel6: TBevel
    Left = 16
    Top = 184
    Width = 713
    Height = 9
    Shape = bsTopLine
  end
  object Label2: TLabel
    Left = 16
    Top = 264
    Width = 141
    Height = 16
    Caption = #1057#1074#1103#1079#1072#1085#1085#1099#1077' '#1090#1072#1073#1083#1080#1094#1099':'
  end
  object Label3: TLabel
    Left = 16
    Top = 296
    Width = 44
    Height = 16
    Caption = #1057#1082#1083#1072#1076':'
  end
  object Label4: TLabel
    Left = 400
    Top = 296
    Width = 126
    Height = 16
    Caption = #1044#1074#1080#1078#1077#1085#1080#1077' '#1090#1086#1074#1072#1088#1072':'
  end
  object Label5: TLabel
    Left = 360
    Top = 384
    Width = 24
    Height = 16
    Caption = '--->'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 384
    Top = 208
    Width = 85
    Height = 16
    Caption = #1058#1088#1072#1085#1079#1072#1082#1094#1080#1080':'
  end
  object Bevel7: TBevel
    Left = 288
    Top = 200
    Width = 9
    Height = 41
    Shape = bsLeftLine
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 16
    Width = 713
    Height = 113
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 16
    Top = 144
    Width = 89
    Height = 25
    Caption = 'Edit record'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 136
    Top = 144
    Width = 97
    Height = 25
    Caption = 'Read only ->'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 248
    Top = 144
    Width = 81
    Height = 25
    Caption = 'Edit data'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 360
    Top = 144
    Width = 137
    Height = 25
    Caption = 'Edit with SetFields'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 624
    Top = 144
    Width = 105
    Height = 25
    Caption = 'InsertRecord'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 512
    Top = 144
    Width = 97
    Height = 25
    Caption = 'Insert record'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 16
    Top = 200
    Width = 105
    Height = 25
    Caption = 'Delete record'
    TabOrder = 7
    OnClick = Button7Click
  end
  object DBGrid2: TDBGrid
    Left = 16
    Top = 320
    Width = 329
    Height = 145
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid3: TDBGrid
    Left = 392
    Top = 320
    Width = 328
    Height = 145
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button8: TButton
    Left = 48
    Top = 480
    Width = 113
    Height = 25
    Caption = 'Add record'
    TabOrder = 10
  end
  object Button9: TButton
    Left = 184
    Top = 480
    Width = 113
    Height = 25
    Caption = 'Delete record'
    TabOrder = 11
  end
  object Button10: TButton
    Left = 432
    Top = 480
    Width = 121
    Height = 25
    Caption = 'Prihod-Rashod'
    TabOrder = 12
  end
  object CheckBox1: TCheckBox
    Left = 576
    Top = 488
    Width = 121
    Height = 17
    Caption = 'View all records'
    TabOrder = 13
  end
  object Button11: TButton
    Left = 488
    Top = 200
    Width = 129
    Height = 25
    Caption = 'Start Transaction'
    TabOrder = 14
    OnClick = Button11Click
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 80
    Top = 48
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'My_Data'
    TableName = 'country.db'
    Left = 48
    Top = 48
  end
  object DataSource2: TDataSource
    Left = 40
    Top = 352
  end
  object DataSource3: TDataSource
    Left = 424
    Top = 352
  end
  object Table2: TTable
    Left = 72
    Top = 352
  end
  object Table3: TTable
    Left = 456
    Top = 352
  end
  object Database1: TDatabase
    AliasName = 'My_Data'
    DatabaseName = 'DataBase1'
    SessionName = 'Default'
    Left = 352
    Top = 264
  end
end
