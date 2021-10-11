unit editrec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Table1: TTable;
    Button1: TButton;
    Bevel1: TBevel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label1: TLabel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Label2: TLabel;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Table2: TTable;
    Table3: TTable;
    Label3: TLabel;
    Label4: TLabel;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    CheckBox1: TCheckBox;
    Label5: TLabel;
    Label6: TLabel;
    Button11: TButton;
    Bevel7: TBevel;
    Database1: TDatabase;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 if Table1.CanModify then Table1.Edit;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 Table1.Active:=false;
 Table1.ReadOnly:=true;
 Table1.Active:=true; 
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 if not Table1.CanModify then
  begin
   MessageDlg('Редактирование записей запрещено!', mtInformation, [mbOK],0);
  end
 else
  begin
   MessageDlg('Редактирование записей разрешено!', mtInformation, [mbOK],0);
   Table1.Edit;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 Table1.Edit;
 // вставка данных на место текущей записи
 Table1.SetFields([nil,'XXXX',nil,666,777]);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
 // встака данных перед текущей записью, способ 1
 Table1.Insert;
 Table1.FieldByName('Name').AsString:='GGG';
 Table1.FieldByName('Area').AsInteger:=123;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 // встака данных перед текущей записью, способ 2
 Table1.InsertRecord([nil,'Moscow',nil,nil,666.666]);
end;

procedure TForm1.Button7Click(Sender: TObject);
var
 n: longint;
begin
 if MessageDlg('Delete Record?',mtConfirmation,[mbOK,mbNO],0)=mrYes
 then Table1.Delete;
 // удаление всех записей
 // Table1.Last;
 // for n:=Table1.RecordCount downto 1 do Table1.Delete;
 // или Table1.EmptyTable;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
 try
  Table2.Append;
  Table2.FieldByName('C_Move').AsFloat:=66.6;
  Table2.FieldByName('C_Date').AsDateTime:=Now;
  Table2.Post;
  Table3.Edit;
  Table3.FieldByName('S_Quantify').AsFloat:=
            Table3.FieldByName('S_Quantify').AsFloat+66.6;
  Table3.Post;
  // если транзакция выполнена успешно, то утвердить изменения
  DataBase1.Commit;
 except
  // если транзакция не выполнена, то отказаться от изменений
  DataBase1.RollBack;
 end; 
end;

end.
