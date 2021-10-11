object Form1: TForm1
  Left = 192
  Top = 128
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Search in data'
  ClientHeight = 423
  ClientWidth = 1014
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
    Left = 440
    Top = 8
    Width = 9
    Height = 361
    Shape = bsLeftLine
  end
  object Label1: TLabel
    Left = 472
    Top = 128
    Width = 41
    Height = 16
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 16
    Top = 16
    Width = 44
    Height = 16
    Caption = #1055#1086#1080#1089#1082':'
  end
  object Label3: TLabel
    Left = 456
    Top = 16
    Width = 179
    Height = 16
    Caption = #1055#1086#1089#1083#1077#1076#1086#1074#1072#1090#1077#1083#1100#1085#1099#1081' '#1087#1086#1080#1089#1082':'
  end
  object Bevel4: TBevel
    Left = 441
    Top = 361
    Width = 561
    Height = 10
    Shape = bsBottomLine
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 40
    Width = 409
    Height = 201
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 256
    Width = 409
    Height = 153
    Caption = #1053#1072#1081#1090#1080
    TabOrder = 1
    object Bevel2: TBevel
      Left = 304
      Top = 16
      Width = 9
      Height = 73
      Shape = bsLeftLine
    end
    object Bevel3: TBevel
      Left = 8
      Top = 88
      Width = 393
      Height = 10
      Shape = bsBottomLine
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 32
      Width = 73
      Height = 17
      Caption = 'by name'
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 8
      Top = 64
      Width = 73
      Height = 17
      Caption = 'by price'
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 88
      Top = 24
      Width = 113
      Height = 24
      TabOrder = 2
      Text = #1058#1077#1090#1088
    end
    object Edit2: TEdit
      Left = 88
      Top = 56
      Width = 113
      Height = 24
      TabOrder = 3
      Text = '9'
    end
    object Button1: TButton
      Left = 208
      Top = 24
      Width = 89
      Height = 25
      Caption = #1055#1086#1080#1089#1082' 1'
      Enabled = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object Edit4: TEdit
      Left = 312
      Top = 56
      Width = 89
      Height = 24
      TabOrder = 5
    end
    object Button3: TButton
      Left = 16
      Top = 112
      Width = 97
      Height = 25
      Caption = #1055#1086#1080#1089#1082' 3'
      TabOrder = 6
      OnClick = Button3Click
    end
    object Edit5: TEdit
      Left = 120
      Top = 112
      Width = 281
      Height = 24
      TabOrder = 7
      Text = #1058#1077#1090#1088#1072#1076#1100
    end
  end
  object DBGrid2: TDBGrid
    Left = 456
    Top = 40
    Width = 545
    Height = 177
    DataSource = DataSource2
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object GroupBox2: TGroupBox
    Left = 456
    Top = 232
    Width = 545
    Height = 121
    Caption = #1055#1086#1080#1089#1082
    TabOrder = 3
    object RadioGroup1: TRadioGroup
      Left = 248
      Top = 16
      Width = 281
      Height = 89
      Caption = #1048#1089#1082#1072#1090#1100
      ItemIndex = 0
      Items.Strings = (
        #1087#1086' '#1092#1072#1084#1080#1083#1080#1080
        #1087#1086' '#1092#1080#1088#1084#1077
        #1087#1086' '#1075#1086#1088#1086#1076#1091)
      TabOrder = 2
      OnClick = RadioGroup1Click
    end
    object Edit3: TEdit
      Left = 40
      Top = 32
      Width = 177
      Height = 24
      TabOrder = 0
      OnChange = Edit3Change
    end
    object CheckBox3: TCheckBox
      Left = 40
      Top = 80
      Width = 177
      Height = 17
      Caption = #1088#1077#1078#1080#1084' '#1087#1086#1080#1089#1082#1072' '#1074#1082#1083#1102#1095#1077#1085
      TabOrder = 1
      OnClick = CheckBox3Click
    end
  end
  object Button2: TButton
    Left = 328
    Top = 280
    Width = 89
    Height = 25
    Caption = #1055#1086#1080#1089#1082' 2'
    Enabled = False
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button4: TButton
    Left = 440
    Top = 384
    Width = 89
    Height = 25
    Caption = #1055#1086#1080#1089#1082' 4'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Edit6: TEdit
    Left = 536
    Top = 384
    Width = 121
    Height = 24
    TabOrder = 6
    Text = #1058#1077#1090
  end
  object Button5: TButton
    Left = 752
    Top = 384
    Width = 89
    Height = 25
    Caption = #1055#1086#1080#1089#1082' 5'
    Enabled = False
    TabOrder = 7
    OnClick = Button5Click
  end
  object Edit7: TEdit
    Left = 848
    Top = 384
    Width = 105
    Height = 24
    TabOrder = 8
    Text = #1056#1091#1095#1082#1072
  end
  object Edit8: TEdit
    Left = 960
    Top = 384
    Width = 41
    Height = 24
    TabOrder = 9
    Text = '10'
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'My_Data'
    TableName = 'Search1.db'
    Left = 32
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 32
    Top = 96
  end
  object Table2: TTable
    Active = True
    DatabaseName = 'My_Data'
    TableName = 'Search2.db'
    Left = 472
    Top = 64
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 472
    Top = 96
  end
end
