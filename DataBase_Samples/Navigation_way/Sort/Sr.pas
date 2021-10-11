unit Sr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, Db, DBTables, ExtCtrls;

type
  TForm1 = class(TForm)
    Table1: TTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    Button2: TButton;
    RadioGroup2: TRadioGroup;
    Button3: TButton;
    RadioGroup3: TRadioGroup;
    RadioGroup4: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
 case RadioGroup1.ItemIndex of
  0:Table1.IndexName:='iN';
  1:Table1.IndexName:='iA';
  2:Table1.IndexName:='iNmAg';
 end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 case RadioGroup2.ItemIndex of
  0:Table1.IndexFieldNames:='Name';
  1:Table1.IndexFieldNames:='Population';
  2:Table1.IndexFieldNames:='Name;Age';
  3:Table1.IndexFieldNames:='City';
 end;
end;
                  
procedure TForm1.Button3Click(Sender: TObject);
begin
 case RadioGroup3.ItemIndex of
  0:Table1.IndexName:='iN';
  1:Table1.IndexName:='iA';
  2:Table1.IndexName:='';
 end;
 case RadioGroup4.ItemIndex of
  0:Table1.IndexDefs[Table1.IndexDefs.IndexOf(Table1.IndexName)].Options:=
          Table1.IndexDefs[Table1.IndexDefs.IndexOf(Table1.IndexName)].Options
                                  +[ixDescending];
  1:Table1.IndexDefs[Table1.IndexDefs.IndexOf(Table1.IndexName)].Options:=
          Table1.IndexDefs[Table1.IndexDefs.IndexOf(Table1.IndexName)].Options
                                  -[ixDescending];
 end;
end;

end.
