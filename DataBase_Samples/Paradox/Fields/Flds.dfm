object Form1: TForm1
  Left = 192
  Top = 121
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1044#1077#1081#1089#1090#1074#1080#1103' '#1089' '#1087#1086#1083#1103#1084#1080
  ClientHeight = 296
  ClientWidth = 632
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
  object Label1: TLabel
    Left = 56
    Top = 176
    Width = 3
    Height = 16
  end
  object Label2: TLabel
    Left = 256
    Top = 120
    Width = 9
    Height = 16
    Caption = '...'
  end
  object Label3: TLabel
    Left = 256
    Top = 168
    Width = 9
    Height = 16
    Caption = '...'
  end
  object Bevel1: TBevel
    Left = 312
    Top = 104
    Width = 9
    Height = 89
    Shape = bsLeftLine
  end
  object Bevel2: TBevel
    Left = 120
    Top = 102
    Width = 9
    Height = 89
    Shape = bsLeftLine
  end
  object Label6: TLabel
    Left = 24
    Top = 176
    Width = 23
    Height = 16
    Caption = #8470'...'
  end
  object Bevel4: TBevel
    Left = 456
    Top = 102
    Width = 9
    Height = 89
    Shape = bsLeftLine
  end
  object Bevel5: TBevel
    Left = 8
    Top = 200
    Width = 489
    Height = 9
    Shape = bsTopLine
  end
  object Bevel6: TBevel
    Left = 120
    Top = 207
    Width = 9
    Height = 43
    Shape = bsLeftLine
  end
  object Bevel7: TBevel
    Left = 312
    Top = 207
    Width = 9
    Height = 43
    Shape = bsLeftLine
  end
  object Bevel8: TBevel
    Left = 456
    Top = 207
    Width = 9
    Height = 43
    Shape = bsLeftLine
  end
  object Bevel3: TBevel
    Left = 8
    Top = 256
    Width = 609
    Height = 9
    Shape = bsTopLine
  end
  object Label4: TLabel
    Left = 16
    Top = 272
    Width = 227
    Height = 16
    Caption = '...and for sample, set in '#39'Age'#39' 25 or 30...'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 609
    Height = 89
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 8
    Top = 112
    Width = 97
    Height = 25
    Caption = 'Name:='#1048#1084#1103
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 144
    Width = 97
    Height = 25
    Caption = #8470' field '#39'Post'#39
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 136
    Top = 112
    Width = 105
    Height = 25
    Caption = 'Field access1:'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 136
    Top = 160
    Width = 105
    Height = 25
    Caption = 'Field access2:'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 328
    Top = 112
    Width = 113
    Height = 25
    Caption = 'ReadOnly'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 328
    Top = 160
    Width = 113
    Height = 25
    Caption = #39'Age'#39' not visible'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 472
    Top = 112
    Width = 145
    Height = 25
    Caption = 'Salary not > 50'
    TabOrder = 7
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 472
    Top = 160
    Width = 145
    Height = 25
    Caption = 'Age not > 20'
    TabOrder = 8
    OnClick = Button8Click
  end
  object Button10: TButton
    Left = 472
    Top = 216
    Width = 145
    Height = 25
    Caption = 'Salary not > 50'
    TabOrder = 9
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 8
    Top = 216
    Width = 97
    Height = 25
    Caption = 'Default Age (!)'
    TabOrder = 10
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 136
    Top = 216
    Width = 161
    Height = 25
    Caption = 'DataSource'
    TabOrder = 11
    OnClick = Button12Click
  end
  object Button14: TButton
    Left = 328
    Top = 216
    Width = 115
    Height = 25
    Caption = 'Save all'
    TabOrder = 12
    OnClick = Button14Click
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'My_Data'
    Constraints = <
      item
        CustomConstraint = 'Salary>=0 and Salary<=50.00'
        ErrorMessage = 'Znachenie ne <0 and ne >50'
        FromDictionary = False
      end
      item
        FromDictionary = False
      end>
    TableName = 'Firstb.db'
    Left = 72
    Top = 32
    object Table1Code: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object Table1Name: TStringField
      FieldName = 'Name'
      OnValidate = Table1NameValidate
    end
    object Table1Age: TFloatField
      FieldName = 'Age'
      OnGetText = Table1AgeGetText
      OnSetText = Table1AgeSetText
      OnValidate = Table1AgeValidate
    end
    object Table1Post: TStringField
      FieldName = 'Post'
      Size = 15
    end
    object Table1Salary: TCurrencyField
      FieldName = 'Salary'
    end
    object Table1BirthDay: TDateField
      FieldName = 'BirthDay'
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    OnDataChange = DataSource1DataChange
    Left = 104
    Top = 32
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 168
    Top = 56
  end
  object Table2: TTable
    DatabaseName = 'My_Data'
    TableName = 'Calcul.db'
    Left = 136
    Top = 56
  end
end
