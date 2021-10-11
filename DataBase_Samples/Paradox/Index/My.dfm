object Form1: TForm1
  Left = 195
  Top = 124
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Table - Index'
  ClientHeight = 606
  ClientWidth = 704
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
  OnClose = FormClose
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 280
    Width = 118
    Height = 16
    Caption = #1057#1087#1080#1089#1086#1082' '#1080#1085#1076#1077#1082#1089#1086#1074':'
  end
  object Label2: TLabel
    Left = 168
    Top = 280
    Width = 95
    Height = 16
    Caption = #1057#1087#1080#1089#1086#1082' '#1087#1086#1083#1077#1081':'
  end
  object Label3: TLabel
    Left = 528
    Top = 432
    Width = 32
    Height = 16
    Caption = #1048#1084#1103':'
  end
  object Label4: TLabel
    Left = 448
    Top = 192
    Width = 237
    Height = 16
    Caption = #1040#1074#1090#1086#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077' '#1079#1072#1087#1080#1089#1080' '#1087#1088#1080' '#1089#1084#1077#1085#1077
  end
  object Label6: TLabel
    Left = 440
    Top = 208
    Width = 246
    Height = 16
    Caption = #1088#1077#1076#1072#1082#1090#1080#1088#1091#1077#1084#1086#1081' '#1090#1072#1073#1083#1080#1094#1099' ('#1089#1074#1086#1081#1089#1090#1074#1086' '
  end
  object Label9: TLabel
    Left = 440
    Top = 225
    Width = 86
    Height = 16
    Caption = #39'Before close'#39')'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 464
    Width = 689
    Height = 9
    Shape = bsBottomLine
  end
  object Bevel3: TBevel
    Left = 272
    Top = 192
    Width = 9
    Height = 57
    Shape = bsLeftLine
  end
  object Label10: TLabel
    Left = 8
    Top = 488
    Width = 151
    Height = 16
    Caption = #1055#1086#1083#1103' '#1090#1077#1082#1091#1097#1077#1081' '#1079#1072#1087#1080#1089#1080':'
  end
  object Bevel2: TBevel
    Left = 7
    Top = 256
    Width = 514
    Height = 9
    Shape = bsBottomLine
  end
  object Bevel4: TBevel
    Left = 136
    Top = 192
    Width = 9
    Height = 57
    Shape = bsLeftLine
  end
  object Bevel5: TBevel
    Left = 424
    Top = 192
    Width = 9
    Height = 57
    Shape = bsLeftLine
  end
  object Bevel6: TBevel
    Left = 7
    Top = 168
    Width = 690
    Height = 9
    Shape = bsBottomLine
  end
  object Bevel7: TBevel
    Left = 528
    Top = 264
    Width = 9
    Height = 145
    Shape = bsLeftLine
  end
  object Bevel8: TBevel
    Left = 536
    Top = 400
    Width = 161
    Height = 9
    Shape = bsBottomLine
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 136
    Width = 680
    Height = 25
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 689
    Height = 113
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 8
    Top = 192
    Width = 113
    Height = 25
    Caption = 'Add index (iP)'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 152
    Top = 192
    Width = 105
    Height = 25
    Caption = 'General index'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 152
    Top = 224
    Width = 105
    Height = 25
    Caption = 'Tekushi index'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 224
    Width = 113
    Height = 25
    Caption = 'Delete index (iP)'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Edit1: TEdit
    Left = 288
    Top = 224
    Width = 121
    Height = 24
    TabOrder = 6
  end
  object Button5: TButton
    Left = 288
    Top = 192
    Width = 121
    Height = 25
    Caption = 'Spiski polei'
    TabOrder = 7
    OnClick = Button5Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 304
    Width = 145
    Height = 145
    ItemHeight = 16
    TabOrder = 8
  end
  object ListBox2: TListBox
    Left = 168
    Top = 304
    Width = 209
    Height = 145
    ItemHeight = 16
    TabOrder = 9
  end
  object Button6: TButton
    Left = 392
    Top = 304
    Width = 121
    Height = 25
    Caption = 'All indexes'
    TabOrder = 10
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 392
    Top = 384
    Width = 121
    Height = 25
    Caption = 'Get index names'
    TabOrder = 11
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 392
    Top = 344
    Width = 121
    Height = 25
    Caption = 'Add index'
    TabOrder = 12
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 392
    Top = 424
    Width = 121
    Height = 25
    Caption = 'Search index'
    TabOrder = 13
    OnClick = Button9Click
  end
  object Edit2: TEdit
    Left = 568
    Top = 424
    Width = 121
    Height = 24
    TabOrder = 14
  end
  object Button10: TButton
    Left = 552
    Top = 304
    Width = 129
    Height = 25
    Caption = 'Country.db'
    TabOrder = 15
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 552
    Top = 264
    Width = 129
    Height = 25
    Caption = 'Firstb.db'
    TabOrder = 16
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 456
    Top = 488
    Width = 217
    Height = 25
    Caption = 'Fields'
    TabOrder = 17
    OnClick = Button12Click
  end
  object ListBox3: TListBox
    Left = 176
    Top = 488
    Width = 265
    Height = 105
    ItemHeight = 16
    TabOrder = 18
  end
  object Button13: TButton
    Left = 456
    Top = 528
    Width = 83
    Height = 25
    Caption = 'Pole zapisi'
    TabOrder = 19
    OnClick = Button13Click
  end
  object Edit3: TEdit
    Left = 552
    Top = 528
    Width = 121
    Height = 24
    TabOrder = 20
  end
  object Button14: TButton
    Left = 456
    Top = 568
    Width = 83
    Height = 25
    Caption = 'Rename'
    Enabled = False
    TabOrder = 21
    OnClick = Button14Click
  end
  object Edit4: TEdit
    Left = 552
    Top = 568
    Width = 121
    Height = 24
    TabOrder = 22
    OnKeyDown = Edit4KeyDown
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 184
    Top = 64
  end
  object Table1: TTable
    Active = True
    BeforeClose = Table1BeforeClose
    DatabaseName = 'My_Data'
    FieldDefs = <
      item
        Name = 'Code'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'Name'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Age'
        DataType = ftFloat
      end
      item
        Name = 'Post'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Salary'
        DataType = ftCurrency
      end
      item
        Name = 'BirthDay'
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Fields = 'Code'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'iBD'
        Fields = 'BirthDay'
        Options = [ixUnique, ixCaseInsensitive]
      end
      item
        Name = 'iUSE'
        Fields = 'Code;Name;Post;Salary;BirthDay'
        Options = [ixUnique, ixCaseInsensitive]
      end
      item
        Name = 'iN'
        Fields = 'Name'
        Options = [ixUnique, ixCaseInsensitive]
      end
      item
        Name = 'iS'
        Fields = 'Salary'
        Options = [ixUnique, ixCaseInsensitive]
      end
      item
        Name = 'iC'
        Fields = 'Code'
        Options = [ixUnique, ixCaseInsensitive]
      end
      item
        Name = 'iNPB'
        Fields = 'Name;Post;BirthDay'
        Options = [ixUnique, ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'Firstb.db'
    Left = 152
    Top = 64
  end
  object Table2: TTable
    Left = 240
    Top = 64
  end
end
