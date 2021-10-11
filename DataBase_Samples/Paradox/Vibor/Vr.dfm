object Form1: TForm1
  Left = 192
  Top = 121
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077' '#1087#1086#1083#1103' '#1074#1099#1073#1086#1088#1072' (R_Name)'
  ClientHeight = 307
  ClientWidth = 699
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
    Left = 8
    Top = 8
    Width = 145
    Height = 16
    Caption = #1055#1086#1089#1090#1091#1087#1083#1077#1085#1080#1077' '#1090#1086#1074#1072#1088#1072':'
  end
  object Label2: TLabel
    Left = 8
    Top = 160
    Width = 115
    Height = 16
    Caption = #1044#1072#1085#1085#1099#1077' '#1090#1086#1074#1072#1088#1086#1074':'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 32
    Width = 681
    Height = 113
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 184
    Width = 681
    Height = 113
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 616
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Refresh'
    TabOrder = 2
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 248
    Top = 80
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'My_Data'
    TableName = 'CalcTab1.db'
    Left = 208
    Top = 80
    object Table1R_N: TAutoIncField
      DisplayWidth = 10
      FieldName = 'R_N'
      ReadOnly = True
    end
    object Table1R_Date: TDateField
      DisplayWidth = 10
      FieldName = 'R_Date'
    end
    object Table1R_Code: TIntegerField
      DisplayWidth = 8
      FieldName = 'R_Code'
    end
    object Table1R_Name: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'R_Name'
      LookupDataSet = Table2
      LookupKeyFields = 'G_Code'
      LookupResultField = 'G_Name'
      KeyFields = 'R_Code'
      Lookup = True
    end
    object Table1R_Number: TIntegerField
      DisplayWidth = 10
      FieldName = 'R_Number'
    end
    object Table1R_Note: TStringField
      DisplayWidth = 30
      FieldName = 'R_Note'
      Size = 30
    end
  end
  object Table2: TTable
    Active = True
    DatabaseName = 'My_Data'
    TableName = 'CalcTab2.db'
    Left = 24
    Top = 240
    object Table2G_Code: TAutoIncField
      DisplayWidth = 10
      FieldName = 'G_Code'
      ReadOnly = True
    end
    object Table2G_Name: TStringField
      DisplayWidth = 20
      FieldName = 'G_Name'
    end
    object Table2G_Price: TCurrencyField
      DisplayWidth = 15
      FieldName = 'G_Price'
    end
    object Table2G_Unit: TStringField
      DisplayWidth = 13
      FieldName = 'G_Unit'
      Size = 5
    end
    object Table2G_Note: TStringField
      DisplayWidth = 30
      FieldName = 'G_Note'
      Size = 30
    end
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 56
    Top = 240
  end
end
