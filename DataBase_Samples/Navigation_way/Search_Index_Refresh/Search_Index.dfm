object Form1: TForm1
  Left = 192
  Top = 121
  BorderStyle = bsSingle
  Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1080#1085#1076#1077#1082#1089#1085#1099#1084' '#1087#1086#1083#1103#1084
  ClientHeight = 447
  ClientWidth = 498
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
    Left = 160
    Top = 256
    Width = 25
    Height = 16
    Caption = 'City:'
  end
  object Label2: TLabel
    Left = 328
    Top = 256
    Width = 32
    Height = 16
    Caption = 'Date:'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 200
    Width = 481
    Height = 9
    Shape = bsBottomLine
  end
  object Label3: TLabel
    Left = 8
    Top = 224
    Width = 55
    Height = 16
    Caption = 'Find Key:'
  end
  object Label4: TLabel
    Left = 8
    Top = 304
    Width = 49
    Height = 16
    Caption = 'Set Key:'
  end
  object Label5: TLabel
    Left = 8
    Top = 384
    Width = 80
    Height = 16
    Caption = 'Find Nearest:'
  end
  object Bevel3: TBevel
    Left = 9
    Top = 280
    Width = 481
    Height = 9
    Shape = bsBottomLine
  end
  object Bevel4: TBevel
    Left = 9
    Top = 360
    Width = 481
    Height = 9
    Shape = bsBottomLine
  end
  object Label6: TLabel
    Left = 160
    Top = 336
    Width = 25
    Height = 16
    Caption = 'City:'
  end
  object Label7: TLabel
    Left = 232
    Top = 416
    Width = 140
    Height = 16
    Caption = '- '#1076#1086#1083#1078#1077#1085' '#1085#1072#1081#1090#1080' Dima'
  end
  object Label8: TLabel
    Left = 144
    Top = 416
    Width = 40
    Height = 16
    Caption = 'Name:'
  end
  object Bevel2: TBevel
    Left = 328
    Top = 296
    Width = 9
    Height = 65
    Shape = bsLeftLine
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 481
    Height = 153
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 168
    Width = 480
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 248
    Width = 97
    Height = 25
    Caption = 'Find'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 192
    Top = 248
    Width = 121
    Height = 24
    TabOrder = 3
    Text = 'Moscow'
  end
  object Edit2: TEdit
    Left = 368
    Top = 248
    Width = 121
    Height = 24
    TabOrder = 4
    Text = '1981'
  end
  object Button2: TButton
    Left = 8
    Top = 328
    Width = 97
    Height = 25
    Caption = 'Find'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Edit3: TEdit
    Left = 192
    Top = 328
    Width = 121
    Height = 24
    TabOrder = 6
    Text = 'Dmitrov'
  end
  object Button3: TButton
    Left = 8
    Top = 408
    Width = 97
    Height = 25
    Caption = 'Find'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Edit4: TEdit
    Left = 192
    Top = 408
    Width = 31
    Height = 24
    TabOrder = 8
    Text = 'Di'
  end
  object Button4: TButton
    Left = 344
    Top = 304
    Width = 145
    Height = 25
    Caption = 'Refresh data'
    TabOrder = 9
    OnClick = Button4Click
  end
  object Edit5: TEdit
    Left = 344
    Top = 336
    Width = 89
    Height = 24
    TabOrder = 10
    Text = 'XxXxXxXxXx'
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 64
    Top = 40
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'My_Data'
    FieldDefs = <
      item
        Name = 'Count'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'Name'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'City'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Date'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Fields = 'Count'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'iCD'
        Fields = 'City;Date'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'iN'
        Fields = 'Name'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'iC'
        Fields = 'City'
        Options = [ixDescending, ixCaseInsensitive]
      end
      item
        Name = 'iD'
        Fields = 'Date'
        Options = [ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'SearchIndex.db'
    Left = 32
    Top = 40
  end
end
