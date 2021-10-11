object Form1: TForm1
  Left = 200
  Top = 122
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'New Table, Access'
  ClientHeight = 236
  ClientWidth = 679
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
    Top = 16
    Width = 69
    Height = 16
    Caption = 'New Table:'
  end
  object Label2: TLabel
    Left = 168
    Top = 16
    Width = 48
    Height = 16
    Caption = 'Access:'
  end
  object Bevel1: TBevel
    Left = 152
    Top = 8
    Width = 9
    Height = 217
    Shape = bsLeftLine
  end
  object Button1: TButton
    Left = 8
    Top = 40
    Width = 129
    Height = 25
    Caption = 'Create NewTable'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 104
    Width = 129
    Height = 25
    Caption = 'Delete NewTable'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 168
    Width = 129
    Height = 25
    Caption = 'Rename NewTable'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 232
    Top = 16
    Width = 129
    Height = 25
    Caption = 'Lock Calcul.db'
    TabOrder = 3
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 168
    Top = 56
    Width = 497
    Height = 169
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button5: TButton
    Left = 376
    Top = 16
    Width = 129
    Height = 25
    Caption = 'Unlock Calcul.db'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 72
    Width = 129
    Height = 24
    TabOrder = 6
    Text = 'NewTable'
  end
  object Edit2: TEdit
    Left = 8
    Top = 136
    Width = 129
    Height = 24
    TabOrder = 7
    Text = 'NewTable'
  end
  object Edit3: TEdit
    Left = 8
    Top = 200
    Width = 129
    Height = 24
    TabOrder = 8
    Text = 'Renamed_NewTable'
  end
  object Table1: TTable
    FieldDefs = <
      item
        Name = 'Table1Field1'
      end>
    StoreDefs = True
    Left = 104
    Top = 8
  end
  object Table2: TTable
    Active = True
    DatabaseName = 'My_Data'
    TableName = 'CalculN.db'
    Left = 200
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = Table2
    Left = 232
    Top = 88
  end
end
