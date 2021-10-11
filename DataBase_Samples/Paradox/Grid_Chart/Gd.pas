unit Gd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, DBTables, ExtCtrls, DBCtrls, StdCtrls, QrTee,
  QuickRpt, TeeProcs, TeEngine, Chart, DBChart, Series;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    Table1: TTable;
    DataSource1: TDataSource;
    DBGrid2: TDBGrid;
    Table2: TTable;
    DataSource2: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    DBChart1: TDBChart;
    Series1: TPieSeries;
    DBGrid3: TDBGrid;
    Table3: TTable;
    DataSource3: TDataSource;
    Bevel1: TBevel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
 DBGrid2.Columns[0].Visible:=false;

 DBGrid2.Columns[1].Title.Caption:='Дата поступления';
 DBGrid2.Columns[1].Title.Alignment:=taCenter;
 DBGrid2.Columns[1].Alignment:=taCenter;

 DBGrid2.Columns[2].Visible:=false;

 DBGrid2.Columns[3].Title.Caption:='Количество';
 DBGrid2.Columns[3].Title.Alignment:=taCenter;
 DBGrid2.Columns[3].Alignment:=taCenter;

 DBGrid2.Columns[4].Title.Caption:='Примечание';
 DBGrid2.Columns[4].Title.Alignment:=taCenter;
 DBGrid2.Columns[4].Alignment:=taLeftJustify;
 DBGrid2.Columns[4].PickList.Clear;
 DBGrid2.Columns[4].PickList.Add('Товар на складе');
 DBGrid2.Columns[4].PickList.Add('Некондиция');
 DBGrid2.Columns[4].PickList.Add('Срок реализации не лимитирован');
end;

end.
