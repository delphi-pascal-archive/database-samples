unit Vr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, DBCtrls, Db, DBTables, StdCtrls;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    Table1: TTable;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid2: TDBGrid;
    Table2: TTable;
    DataSource2: TDataSource;
    Table2G_Code: TAutoIncField;
    Table2G_Name: TStringField;
    Table2G_Price: TCurrencyField;
    Table2G_Unit: TStringField;
    Table2G_Note: TStringField;
    Table1R_N: TAutoIncField;
    Table1R_Date: TDateField;
    Table1R_Code: TIntegerField;
    Table1R_Number: TIntegerField;
    Table1R_Note: TStringField;
    Table1R_Name: TStringField;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
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
//если измен€ютс€ значени€ Table2, то
 Table1.Refresh;               
end;

end.
