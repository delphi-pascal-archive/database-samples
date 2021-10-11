object Form1: TForm1
  Left = 192
  Top = 121
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1060#1080#1083#1100#1090#1088#1072#1094#1080#1103' '#1079#1072#1087#1080#1089#1077#1081
  ClientHeight = 336
  ClientWidth = 851
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
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 16
    Top = 160
    Width = 218
    Height = 16
    Caption = #1042#1099#1088#1072#1078#1077#1085#1080#1077' '#1092#1080#1083#1100#1090#1088#1072': ('#1077#1089#1083#1080' '#1080#1084#1103
  end
  object Label2: TLabel
    Left = 13
    Top = 176
    Width = 218
    Height = 16
    Caption = ' '#1087#1086#1083#1103' '#1089#1086#1076#1077#1088#1078#1080#1090' '#1087#1088#1086#1073#1077#1083#1099', '#1090#1086' '#1077#1075#1086
  end
  object Label5: TLabel
    Left = 13
    Top = 192
    Width = 114
    Height = 16
    Caption = ' '#1079#1072#1082#1083#1102#1095#1072#1102#1090' '#1074' [  ] )'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 833
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
    Left = 16
    Top = 256
    Width = 105
    Height = 25
    Caption = #1042#1089#1077' '#1079#1072#1087#1080#1089#1080
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 128
    Top = 256
    Width = 105
    Height = 25
    Caption = #1060#1080#1083#1100#1090#1088#1086#1074#1072#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 224
    Width = 217
    Height = 24
    TabOrder = 3
    Text = 'event_date='#39'21.06.1996'#39
  end
  object GroupBox1: TGroupBox
    Left = 304
    Top = 160
    Width = 537
    Height = 161
    Caption = ' '#1060#1080#1083#1100#1090#1088#1072#1094#1080#1103' '
    TabOrder = 4
    object Label3: TLabel
      Left = 304
      Top = 32
      Width = 73
      Height = 16
      Caption = '<  '#1054#1050#1051#1040#1044'  <'
    end
    object Label4: TLabel
      Left = 272
      Top = 64
      Width = 147
      Height = 16
      Caption = '<  '#1044#1040#1058#1040' '#1056#1054#1046#1044#1045#1053#1048#1071'  <'
    end
    object RadioButton1: TRadioButton
      Left = 16
      Top = 32
      Width = 97
      Height = 17
      Caption = #1055#1086' '#1086#1082#1083#1072#1076#1091
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 16
      Top = 64
      Width = 161
      Height = 17
      Caption = #1055#1086' '#1076#1072#1090#1077' '#1088#1086#1078#1076#1077#1085#1080#1103
      TabOrder = 1
    end
    object RadioButton3: TRadioButton
      Left = 16
      Top = 96
      Width = 129
      Height = 17
      Caption = #1055#1086' '#1074#1099#1088#1072#1078#1077#1085#1080#1102
      TabOrder = 2
    end
    object RadioButton4: TRadioButton
      Left = 16
      Top = 128
      Width = 113
      Height = 17
      Caption = #1054#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 176
      Top = 24
      Width = 89
      Height = 24
      TabOrder = 4
      Text = '5,00'
    end
    object Edit3: TEdit
      Left = 432
      Top = 24
      Width = 89
      Height = 24
      TabOrder = 5
      Text = '12,50'
    end
    object Edit4: TEdit
      Left = 176
      Top = 88
      Width = 345
      Height = 24
      TabOrder = 6
      Text = 'VenueNo='#39'5'#39
    end
    object Button3: TButton
      Left = 176
      Top = 120
      Width = 345
      Height = 25
      Caption = #1060#1080#1083#1100#1090#1088#1086#1074#1072#1090#1100
      TabOrder = 7
      OnClick = Button3Click
    end
    object Edit5: TEdit
      Left = 176
      Top = 56
      Width = 89
      Height = 24
      TabOrder = 8
      Text = #39'21.06.1996'#39
    end
    object Edit6: TEdit
      Left = 432
      Top = 56
      Width = 89
      Height = 24
      TabOrder = 9
      Text = #39'02.12.1998'#39
    end
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'My_Data'
    TableName = 'events.db'
    Left = 48
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 48
    Top = 72
  end
end
