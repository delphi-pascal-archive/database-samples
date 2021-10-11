object Form1: TForm1
  Left = 192
  Top = 121
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Sort'
  ClientHeight = 303
  ClientWidth = 568
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 553
    Height = 137
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
    Top = 160
    Width = 137
    Height = 25
    Caption = 'Sort by index Name'
    TabOrder = 1
    OnClick = Button1Click
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 192
    Width = 137
    Height = 97
    Caption = 'Radio Group 1'
    Items.Strings = (
      'Name'
      'Age'
      'Name&Age')
    TabOrder = 2
  end
  object Button2: TButton
    Left = 160
    Top = 160
    Width = 137
    Height = 25
    Caption = 'Sort by fields Name'
    TabOrder = 3
    OnClick = Button2Click
  end
  object RadioGroup2: TRadioGroup
    Left = 160
    Top = 192
    Width = 137
    Height = 97
    Caption = 'Radio Group 2'
    Items.Strings = (
      'Name'
      'Population'
      'Name_Age'
      'City')
    TabOrder = 4
  end
  object Button3: TButton
    Left = 312
    Top = 160
    Width = 249
    Height = 25
    Caption = 'Sort'
    TabOrder = 5
    OnClick = Button3Click
  end
  object RadioGroup3: TRadioGroup
    Left = 312
    Top = 192
    Width = 121
    Height = 97
    Caption = 'Type'
    Items.Strings = (
      'Name'
      'Age'
      'Unsorted')
    TabOrder = 6
  end
  object RadioGroup4: TRadioGroup
    Left = 440
    Top = 192
    Width = 121
    Height = 97
    Caption = 'Direction'
    Items.Strings = (
      'On increase'
      'On decrease')
    TabOrder = 7
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'My_Data'
    TableName = 'Sort.db'
    Left = 32
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 64
    Top = 40
  end
end
