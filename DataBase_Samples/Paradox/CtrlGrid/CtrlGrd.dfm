object Form1: TForm1
  Left = 202
  Top = 124
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'DBCtrlGrid'
  ClientHeight = 325
  ClientWidth = 687
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
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 8
    Top = 8
    Width = 673
    Height = 308
    DataSource = DataSource1
    PanelHeight = 77
    PanelWidth = 653
    TabOrder = 0
    RowCount = 4
    object Label1: TLabel
      Left = 8
      Top = 48
      Width = 77
      Height = 16
      Caption = #1055#1086#1087#1091#1083#1103#1094#1080#1103':'
    end
    object DBText1: TDBText
      Left = 96
      Top = 48
      Width = 57
      Height = 17
      DataField = 'Population'
      DataSource = DataSource1
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 16
      Width = 153
      Height = 24
      DataField = 'Name'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit5: TDBEdit
      Left = 488
      Top = 16
      Width = 153
      Height = 24
      DataField = 'Area'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 168
      Top = 16
      Width = 153
      Height = 24
      DataField = 'Capital'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 328
      Top = 16
      Width = 153
      Height = 25
      DataField = 'Continent'
      DataSource = DataSource1
      TabOrder = 3
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 120
    Top = 112
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'My_Data'
    TableName = 'country.db'
    Left = 88
    Top = 112
  end
end
