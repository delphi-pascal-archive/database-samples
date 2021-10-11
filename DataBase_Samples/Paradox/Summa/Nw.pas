unit Nw;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, DBCtrls, Db, DBTables, StdCtrls, Spin;

type                                                   
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    Table1: TTable;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Table1Name: TStringField;
    Table1Price: TCurrencyField;
    Table1Number: TIntegerField;
    Table1Total: TCurrencyField;
    Table1TotalUE: TCurrencyField;
    Table1Total_New: TFloatField;
    Table1TotalUE_New: TFloatField;
    Bevel1: TBevel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button6: TButton;
    Button11: TButton;
    Label1: TLabel;
    Button12: TButton;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Button13: TButton;
    Button14: TButton;
    Bevel4: TBevel;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    SpinEdit1: TSpinEdit;
    Bevel5: TBevel;
    Button18: TButton;
    Label2: TLabel;
    Bevel6: TBevel;
    Table3: TTable;
    DataSource3: TDataSource;
    DBGrid3: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    ListBox1: TListBox;
    Button19: TButton;
    Bevel9: TBevel;
    procedure Button1Click(Sender: TObject);
    procedure Table1CalcFields(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Table1AfterScroll(DataSet: TDataSet);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
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
//отформатировать значения поля можно следующим образом
 Table1Total_New.DisplayFormat:='####.#';
 Table1TotalUE_New.DisplayFormat:='####.#';
end;

procedure TForm1.Table1CalcFields(DataSet: TDataSet);
begin
//умножение и деление (25 - стоимость доллара)
 Table1Total_New.AsFloat:=Table1.FieldByName('Price').AsFloat*
                           Table1.FieldByName('Number').AsInteger;
 Table1TotalUE_New.AsFloat:=Table1Total_New.AsFloat/25;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 DBNavigator1.BtnClick(nbFirst);   
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 DBNavigator1.BtnClick(nbPrior);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 DBNavigator1.BtnClick(nbNext);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 DBNavigator1.BtnClick(nbLast);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
 DBNavigator1.BtnClick(nbInsert);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
 DBNavigator1.BtnClick(nbDelete);
//удаление без подтверждения
// DBNavigator1.ConfirmDelete:=false;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
 DBNavigator1.BtnClick(nbEdit);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
 DBNavigator1.BtnClick(nbPost);
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
 DBNavigator1.BtnClick(nbCancel);
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
 DBNavigator1.BtnClick(nbRefresh);
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
 DBNavigator1.Flat:=true;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
 Table1.Next;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
 Table1.Prior;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
 Table1.MoveBy(SpinEdit1.Value);
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
 Table1.First;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
 Table1.Last;
end;

procedure TForm1.Table1AfterScroll(DataSet: TDataSet);
begin
 Label2.Caption:='Запись номер '+IntToStr(Table1.RecNo);
//ограничения SpinEdit1
 SpinEdit1.MinValue:=1-Table1.RecNo;
 SpinEdit1.MaxValue:=Table1.RecordCount-Table1.RecNo;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
 Table1.GotoCurrent(Table3);
end;

procedure TForm1.Button19Click(Sender: TObject);
var
 i,n: integer;
begin
 ListBox1.Items.Clear;
 for i:=0 to Table1.RecordCount-1 do
  begin
   Table1.RecNo:=i+1;
   for n:=0 to Table1.FieldCount-1 do
    ListBox1.Items.Add(Table1.Fields[n].AsString);
  end;
end;

end.
