unit FiltrDiap;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, DBTables, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Table1: TTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Table1Code: TAutoIncField;
    Table1Name: TStringField;
    Table1Age: TIntegerField;
    Table1City: TStringField;
    Table1Population: TIntegerField;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    Button3: TButton;
    Button4: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
 Table1.IndexName:='iA';//установка текущего индекса
 Table1.SetRangeStart;
 Table1.KeyExclusive:=true;//17 не входит в отфильтрованный набор
 Table1.FieldByName('Age').AsInteger:=StrToInt(Edit1.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 with Table1 do
  begin
   IndexName:='iNmAg';
   CancelRange;
   SetRangeStart;
   FieldByName('Name').AsString:='A';//от А
   FieldByName('Age').AsString:=Edit1.Text;
   SetRangeEnd;
   FieldByName('Name').AsString:='E';//до Е
   ApplyRange;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 Table1.IndexName:='iA';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 Table1.CancelRange;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 with Table1 do
  begin
//временное отключение фильтрации
   CancelRange;
//установка нижней границы диапазона
   SetRangeStart;
   FieldByName('Age').AsString:=Edit2.Text;
//установка верхней границы диапазона
   SetRangeEnd;
   FieldByName('Age').AsString:=Edit3.Text;
//включение фильтрации
   ApplyRange;
  end;
end;

end.
