object Form1: TForm1
  Left = 192
  Top = 121
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Grid & Chart'
  ClientHeight = 818
  ClientWidth = 720
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
    Left = 8
    Top = 8
    Width = 179
    Height = 16
    Caption = 'С помощью Object Inspector:'
  end
  object Label2: TLabel
    Left = 8
    Top = 168
    Width = 156
    Height = 16
    Caption = 'С помощью Form Create:'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 288
    Width = 705
    Height = 10
    Shape = bsBottomLine
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 32
    Width = 705
    Height = 121
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'R_N'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'R_Date'
        Title.Caption = 'Дата поступления'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R_Code'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'R_Number'
        Title.Caption = 'Количество'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R_Note'
        PickList.Strings = (
          'Товар на складе'
          'Некондиция'
          'Срок реализации не лимитирован')
        Title.Caption = 'Примечание'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 192
    Width = 705
    Height = 89
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBChart1: TDBChart
    Left = 8
    Top = 448
    Width = 705
    Height = 361
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'TDBChart')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    TabOrder = 2
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      DataSource = Table3
      SeriesColor = clRed
      XLabelsSource = 'Capital'
      Circled = True
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1
      PieValues.Order = loNone
      PieValues.ValueSource = 'Population'
    end
  end
  object DBGrid3: TDBGrid
    Left = 8
    Top = 312
    Width = 705
    Height = 120
    DataSource = DataSource3
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'My_Data'
    TableName = 'CalcTab1.db'
    Left = 168
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 200
    Top = 104
  end
  object Table2: TTable
    Active = True
    DatabaseName = 'My_Data'
    TableName = 'CalcTab1.db'
    Left = 168
    Top = 240
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 200
    Top = 240
  end
  object Table3: TTable
    Active = True
    DatabaseName = 'My_Data'
    TableName = 'country.db'
    Left = 56
    Top = 376
  end
  object DataSource3: TDataSource
    DataSet = Table3
    Left = 88
    Top = 376
  end
end
