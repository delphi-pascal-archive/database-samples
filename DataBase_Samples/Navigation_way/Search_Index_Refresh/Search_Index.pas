unit Search_Index;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, DBTables, ExtCtrls, DBCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    Table1: TTable;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Button2: TButton;
    Edit3: TEdit;
    Label6: TLabel;
    Button3: TButton;
    Edit4: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Button4: TButton;
    Edit5: TEdit;
    Bevel2: TBevel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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
 Table1.IndexFieldNames:='City;Date';
 if not Table1.FindKey([Edit1.Text,Edit2.Text])
 then ShowMessage('«апись не найдена');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 Table1.IndexFieldNames:='City';
 Table1.SetKey;//или EditKey
 Table1.FieldByName('City').AsString:=Edit3.Text;
 if not Table1.GotoKey
 then ShowMessage('«апись не найдена');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 Table1.IndexFieldNames:='Name';
 Table1.FindNearest([Edit4.Text]);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 Table1.Edit;
 Table1.FieldByName('Name').AsString:=Edit5.Text;
 Table1.Post;
 Table1.Refresh;
 // если есть св€занна€ с этой таблица, то, например
 // Form2.Table2.Refresh;
end;

end.
