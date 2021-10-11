object Form1: TForm1
  Left = 192
  Top = 121
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077' '#1087#1086' '#1085#1072#1073#1086#1088#1091' '#1076#1072#1085#1085#1099#1093' ('#1087#1086' '#1079#1072#1087#1080#1089#1103#1084'), '#1079#1072#1082#1083#1072#1076#1082#1080
  ClientHeight = 288
  ClientWidth = 775
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
    Left = 176
    Top = 152
    Width = 7
    Height = 16
    Caption = '0'
  end
  object Label2: TLabel
    Left = 120
    Top = 152
    Width = 52
    Height = 16
    Caption = 'Salary = '
  end
  object Label3: TLabel
    Left = 176
    Top = 200
    Width = 7
    Height = 16
    Caption = '0'
  end
  object Label4: TLabel
    Left = 120
    Top = 200
    Width = 52
    Height = 16
    Caption = 'Salary = '
  end
  object Bevel1: TBevel
    Left = 248
    Top = 136
    Width = 9
    Height = 89
    Shape = bsLeftLine
  end
  object Bevel2: TBevel
    Left = 352
    Top = 135
    Width = 9
    Height = 89
    Shape = bsLeftLine
  end
  object Label5: TLabel
    Left = 384
    Top = 200
    Width = 7
    Height = 16
    Caption = '0'
  end
  object Bevel3: TBevel
    Left = 456
    Top = 135
    Width = 9
    Height = 89
    Shape = bsLeftLine
  end
  object Label6: TLabel
    Left = 368
    Top = 200
    Width = 7
    Height = 16
    Caption = '='
  end
  object Bevel4: TBevel
    Left = 8
    Top = 232
    Width = 761
    Height = 9
    Shape = bsTopLine
  end
  object Label11: TLabel
    Left = 16
    Top = 250
    Width = 87
    Height = 20
    Caption = #1047#1072#1082#1083#1072#1076#1082#1080':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Bevel5: TBevel
    Left = 328
    Top = 240
    Width = 9
    Height = 41
    Shape = bsLeftLine
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 761
    Height = 120
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
    Top = 144
    Width = 97
    Height = 25
    Caption = 'Summ (down)'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 192
    Width = 97
    Height = 25
    Caption = 'Summ (up)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 264
    Top = 144
    Width = 75
    Height = 25
    Caption = 'RecNo'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 264
    Top = 192
    Width = 73
    Height = 24
    TabOrder = 4
    Text = '3'
  end
  object Button4: TButton
    Left = 368
    Top = 144
    Width = 75
    Height = 25
    Caption = 'EOF'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Panel1: TPanel
    Left = 464
    Top = 136
    Width = 305
    Height = 89
    TabOrder = 6
    object Label7: TLabel
      Left = 8
      Top = 40
      Width = 58
      Height = 16
      Caption = 'Progress:'
    end
    object Label8: TLabel
      Left = 72
      Top = 40
      Width = 19
      Height = 16
      Caption = '0%'
    end
    object Label10: TLabel
      Left = 64
      Top = 8
      Width = 7
      Height = 16
      Caption = '0'
    end
    object Label9: TLabel
      Left = 8
      Top = 8
      Width = 48
      Height = 16
      Caption = 'Summ ='
    end
    object Button5: TButton
      Left = 224
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Start'
      TabOrder = 0
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 224
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = Button6Click
    end
    object ProgressBar1: TProgressBar
      Left = 8
      Top = 59
      Width = 209
      Height = 20
      TabOrder = 2
    end
  end
  object Button7: TButton
    Left = 120
    Top = 248
    Width = 89
    Height = 25
    Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100
    TabOrder = 7
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 224
    Top = 248
    Width = 89
    Height = 25
    Caption = #1055#1077#1088#1077#1081#1090#1080
    TabOrder = 8
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 344
    Top = 248
    Width = 89
    Height = 25
    Caption = 'Bookmark'
    TabOrder = 9
    OnClick = Button9Click
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'DBDEMOS'
    TableName = 'employee.db'
    Left = 96
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 128
    Top = 64
  end
end
