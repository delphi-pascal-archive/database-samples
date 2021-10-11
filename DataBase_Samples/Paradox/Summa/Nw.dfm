object Form1: TForm1
  Left = 193
  Top = 121
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Summa & Jumps'
  ClientHeight = 620
  ClientWidth = 689
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
    Left = 8
    Top = 192
    Width = 673
    Height = 10
    Shape = bsBottomLine
  end
  object Label1: TLabel
    Left = 336
    Top = 248
    Width = 26
    Height = 16
    Caption = #1080#1083#1080
  end
  object Bevel2: TBevel
    Left = 128
    Top = 152
    Width = 9
    Height = 42
    Shape = bsLeftLine
  end
  object Bevel3: TBevel
    Left = 5
    Top = 304
    Width = 673
    Height = 10
    Shape = bsBottomLine
  end
  object Bevel4: TBevel
    Left = 5
    Top = 360
    Width = 673
    Height = 10
    Shape = bsBottomLine
  end
  object Bevel5: TBevel
    Left = 184
    Top = 320
    Width = 9
    Height = 42
    Shape = bsLeftLine
  end
  object Label2: TLabel
    Left = 217
    Top = 168
    Width = 6
    Height = 16
    Caption = 'x'
  end
  object Bevel6: TBevel
    Left = 328
    Top = 152
    Width = 9
    Height = 42
    Shape = bsLeftLine
  end
  object Label3: TLabel
    Left = 464
    Top = 160
    Width = 184
    Height = 16
    Caption = '('#1091#1082#1072#1079#1072#1090#1077#1083#1100' '#1079#1072#1087#1080#1089#1080' '#1074' Table1'
  end
  object Label4: TLabel
    Left = 504
    Top = 176
    Width = 167
    Height = 16
    Caption = #1089#1090#1072#1085#1086#1074#1080#1090#1089#1103' '#1082#1072#1082' '#1074' Table3)'
  end
  object Bevel7: TBevel
    Left = 368
    Top = 320
    Width = 9
    Height = 42
    Shape = bsLeftLine
  end
  object Bevel8: TBevel
    Left = 208
    Top = 152
    Width = 9
    Height = 42
    Shape = bsLeftLine
  end
  object Bevel9: TBevel
    Left = 8
    Top = 464
    Width = 673
    Height = 10
    Shape = bsBottomLine
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 216
    Width = 660
    Height = 25
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 673
    Height = 137
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 16
    Top = 160
    Width = 97
    Height = 25
    Caption = 'Price Format'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 272
    Width = 57
    Height = 25
    Caption = '|<'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 96
    Top = 272
    Width = 57
    Height = 25
    Caption = '<'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 160
    Top = 272
    Width = 57
    Height = 25
    Caption = '>'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 224
    Top = 272
    Width = 57
    Height = 25
    Caption = '>|'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button7: TButton
    Left = 352
    Top = 272
    Width = 57
    Height = 25
    Caption = '-'
    TabOrder = 7
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 416
    Top = 272
    Width = 57
    Height = 25
    Caption = '^'
    TabOrder = 8
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 480
    Top = 272
    Width = 57
    Height = 25
    Caption = 'V'
    TabOrder = 9
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 544
    Top = 272
    Width = 57
    Height = 25
    Caption = 'X'
    TabOrder = 10
    OnClick = Button10Click
  end
  object Button6: TButton
    Left = 288
    Top = 272
    Width = 57
    Height = 25
    Caption = '+'
    TabOrder = 11
    OnClick = Button6Click
  end
  object Button11: TButton
    Left = 608
    Top = 272
    Width = 57
    Height = 25
    Caption = 'C'
    TabOrder = 12
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 144
    Top = 160
    Width = 49
    Height = 25
    Caption = 'Flat'
    TabOrder = 13
    OnClick = Button12Click
  end
  object Button13: TButton
    Left = 200
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Prior'
    TabOrder = 14
    OnClick = Button13Click
  end
  object Button14: TButton
    Left = 280
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Next'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 15
    OnClick = Button14Click
  end
  object Button15: TButton
    Left = 384
    Top = 328
    Width = 105
    Height = 25
    Caption = 'Jump'
    TabOrder = 16
    OnClick = Button15Click
  end
  object Button16: TButton
    Left = 16
    Top = 328
    Width = 75
    Height = 25
    Caption = 'First'
    TabOrder = 17
    OnClick = Button16Click
  end
  object Button17: TButton
    Left = 96
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Last'
    TabOrder = 18
    OnClick = Button17Click
  end
  object SpinEdit1: TSpinEdit
    Left = 504
    Top = 328
    Width = 169
    Height = 26
    MaxValue = 0
    MinValue = 0
    TabOrder = 19
    Value = 0
  end
  object Button18: TButton
    Left = 344
    Top = 160
    Width = 105
    Height = 25
    Caption = 'Sinchronizing'
    TabOrder = 20
    OnClick = Button18Click
  end
  object DBGrid3: TDBGrid
    Left = 8
    Top = 488
    Width = 673
    Height = 120
    DataSource = DataSource3
    TabOrder = 21
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ListBox1: TListBox
    Left = 152
    Top = 384
    Width = 521
    Height = 73
    ItemHeight = 16
    TabOrder = 22
  end
  object Button19: TButton
    Left = 16
    Top = 384
    Width = 121
    Height = 25
    Caption = 'View data'
    TabOrder = 23
    OnClick = Button19Click
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 64
    Top = 88
  end
  object Table1: TTable
    Active = True
    AfterScroll = Table1AfterScroll
    OnCalcFields = Table1CalcFields
    DatabaseName = 'My_Data'
    TableName = 'Calcul.db'
    Left = 32
    Top = 88
    object Table1Name: TStringField
      DisplayWidth = 20
      FieldName = 'Name'
    end
    object Table1Price: TCurrencyField
      DisplayWidth = 11
      FieldName = 'Price'
    end
    object Table1Number: TIntegerField
      DisplayWidth = 11
      FieldName = 'Number'
    end
    object Table1Total_New: TFloatField
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'Total_New'
      Calculated = True
    end
    object Table1TotalUE_New: TFloatField
      DisplayWidth = 13
      FieldKind = fkCalculated
      FieldName = 'TotalUE_New'
      Calculated = True
    end
    object Table1Total: TCurrencyField
      DisplayWidth = 10
      FieldName = 'Total'
    end
    object Table1TotalUE: TCurrencyField
      DisplayWidth = 10
      FieldName = 'TotalUE'
    end
  end
  object Table3: TTable
    Active = True
    DatabaseName = 'My_Data'
    TableName = 'Calcul.db'
    Left = 72
    Top = 520
  end
  object DataSource3: TDataSource
    DataSet = Table1
    Left = 104
    Top = 520
  end
end
