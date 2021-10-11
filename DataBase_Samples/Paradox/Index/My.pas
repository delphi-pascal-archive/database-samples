unit My;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, DBCtrls, Db, DBTables, StdCtrls;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    Table1: TTable;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Table2: TTable;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Button5: TButton;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button9: TButton;
    Edit2: TEdit;
    Label3: TLabel;
    Button10: TButton;
    Button11: TButton;
    Label4: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Button12: TButton;
    Bevel1: TBevel;
    ListBox3: TListBox;
    Bevel3: TBevel;
    Label10: TLabel;
    Button13: TButton;
    Edit3: TEdit;
    Button14: TButton;
    Edit4: TEdit;
    Bevel2: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Table1BeforeClose(DataSet: TDataSet);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
//перевод в монопольный доступ
 Table1.Close;
 Table1.Exclusive:=true;
 Table1.Open;
//добавление индекса
 Table1.AddIndex('iP','Post',[ixDescending,ixCaseInsensitive]);
//закрытие монопольного доступа
 Table1.Close;
 Table1.Exclusive:=false;
 Table1.Open;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
// задание в качестве текущего главного индекса
 Table1.IndexFieldNames:='Name;Post;BirthDay';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
// задание текущего индекса
 Table1.IndexName:='iN';
 Table2.IndexFieldNames:='Name';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
//перевод в монопольный доступ
 Table1.Close;
 Table1.Exclusive:=true;
 Table1.Open;
//удаление индекса
 Table1.DeleteIndex('iP');
//закрытие монопольного доступа
 Table1.Close;
 Table1.Exclusive:=false;
 Table1.Open;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 Edit1.Text:=Table1.IndexDefs[Table1.RecNo].Fields;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
 n:integer;
begin
 ListBox1.Items.Clear;
 ListBox2.Items.Clear;
 for n:=0 to Table1.IndexDefs.Count-1 do
  begin
   ListBox1.Items.Add(Table1.IndexDefs[n].Name);
   ListBox2.Items.Add(Table1.IndexDefs[n].Fields);
  end; 
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
 ListBox1.Items.Clear;
 ListBox2.Items.Clear;
 Table1.GetIndexNames(ListBox1.Items);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
// Table1.IndexDefs.Add(...) - не требует перевода таблицы в
// режим монопольного (Table1.Exclusive) доступа
 Table1.IndexDefs.Clear;
 Table1.IndexDefs.Add('','N',[ixPrimary,ixUnique]);
 Table1.IndexDefs.Add('iM','Cod;Post',[ixDescending,ixCaseInsensitive]);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
 if (Table1.IndexDefs.IndexOf(Edit2.Text)=-1) or (Edit2.Text='')
 then
  begin //если имени индекса нет
   MessageDlg('------ Index not found! ------',mtError,[mbOK],0);
   if Edit2.CanFocus then Edit2.SetFocus;
  end
 else MessageDlg('------ Index found! ------',mtInformation,[mbOK],0);
end;

procedure TForm1.Table1BeforeClose(DataSet: TDataSet);
begin
// при закрытии наборов данных происходит автоматическое
// сохранение редактируемой записи
 if (Table1.State=dsEdit) or (Table1.State=dsInsert)
 then Table1.Post;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
 Table1.Close;
 Table1.TableName:='country.db';
 Table1.Open;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
 Table1.Close;
 Table1.TableName:='Firstb.db';
 Table1.Open;
end;

procedure TForm1.Button12Click(Sender: TObject);
var
 n:integer;
begin
//чтение полей текущей записи
 ListBox3.Items.Clear;
 for n:=0 to Table1.FieldCount-1 do
 ListBox3.Items.Add(Table1.Fields[n].AsString);
end;

procedure TForm1.Button13Click(Sender: TObject);
var
 x:integer;
begin
 Edit3.Text:=Table1.FieldByName('Name').AsString;
 x:=Table1.FieldByName('Code').AsInteger;
end;

procedure TForm1.Button14Click(Sender: TObject);
var
 x:integer;
begin
//перевод набора данныхв режим редактирования
 Table1.Edit;
//изменение значения полей
 x:=20;
 Table1.FieldByName('Name').AsString:=Edit4.Text;
 Table1.FieldByName('Age').AsInteger:=x;
//закрепление изменений
 Table1.Post;
end;

procedure TForm1.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 Button14.Enabled:=true;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if (Table1.State=dsEdit) or (Table1.State=dsInsert) then Table1.Post;
end;

end.
