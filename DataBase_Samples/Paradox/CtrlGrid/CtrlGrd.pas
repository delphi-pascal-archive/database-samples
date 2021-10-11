unit CtrlGrd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCGrids, Db, DBTables, StdCtrls, DBCtrls, Mask;

type
  TForm1 = class(TForm)
    DBCtrlGrid1: TDBCtrlGrid;
    DataSource1: TDataSource;
    Table1: TTable;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    DBText1: TDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

end.
