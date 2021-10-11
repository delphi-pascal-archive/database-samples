unit Flds;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCGrids, Db, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    Table1: TTable;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Button3: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Button4: TButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label6: TLabel;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Bevel4: TBevel;
    Table1Code: TAutoIncField;
    Table1Name: TStringField;
    Table1Age: TFloatField;
    Table1Post: TStringField;
    Table1Salary: TCurrencyField;
    Table1BirthDay: TDateField;
    Button10: TButton;
    Bevel5: TBevel;
    Button11: TButton;
    Bevel6: TBevel;
    Button12: TButton;
    Button14: TButton;
    Bevel7: TBevel;
    Bevel8: TBevel;
    DataSource2: TDataSource;
    Table2: TTable;
    Bevel3: TBevel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Table1AgeValidate(Sender: TField);
    procedure Table1AgeSetText(Sender: TField; const Text: String);
    procedure Table1NameValidate(Sender: TField);
    procedure Table1AgeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Button12Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Button14Click(Sender: TObject);
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
//вместо пол€ 'Name' поле '»м€' (два способа)
 Table1.FieldByName('Name').DisplayLabel:='»м€'; // 1 //
 Table1Name.DisplayLabel:='»м€';                 // 2 //
end;

procedure TForm1.Button2Click(Sender: TObject);
var
 i:integer;
begin
 i:=Table1.FieldByName('Post').FieldNo;
 Label1.Caption:=IntToStr(i);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
 s:string;
begin
//доступ к по его имени в наборе данных
 s:=Table1.FieldByName('Name').Value;
 Label2.Caption:=s;
//доступ к полю как к отдельному компоненту
 s:=Table1Name.Value;
 Label3.Caption:=s;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
 s:string;
begin
 //доступ к по его имени в наборе данных
 s:=Table1.FieldByName('Name').AsString;
 Label2.Caption:=s;
//доступ к полю как к отдельному компоненту
 s:=Table1Name.AsString;
 Label3.Caption:=s;
//поле - вещественного типа, в св€зи с чем следующий оператор
// присваивани€ - s:=Table1Name.Value - неверен!!!(неверно - х)!!!
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 Table1.FieldByName('Name').ReadOnly:=true;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
 Table1.FieldByName('Age').Visible:=false;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
 Table1Salary.MinValue:=0;
 Table1Salary.MaxValue:=50.00;
 Table1Salary.ConstraintErrorMessage:='количество должно быть от 0 до 50';
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
 Table1Age.MinValue:=0;
 Table1Age.MaxValue:=20;
 Table1Age.ConstraintErrorMessage:='количество должно быть от 0 до 20';
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
 Table1Salary.CustomConstraint:='Salary>=0 and Salary<=50.00';
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
//не работает
 Table1Age.DefaultExpression:='20';
end;

procedure TForm1.Table1AgeValidate(Sender: TField);
begin
//если 25 или 30 то ничего не вводитс€
 if (Table1.FieldByName('Age').AsString='25') or
  (Table1.FieldByName('Age').AsString='30')
 then {Abort} MessageDlg('Ќомер не может ровн€тьс€ 25 или 30!',mtError,[mbOK],0);
end;

procedure TForm1.Table1AgeSetText(Sender: TField; const Text: String);
begin
//если 25 или 30 то остаетс€ старое значение
 if not ((Text='25') or (Text='30'))
 then Table1.FieldByName('Age').AsString:=Text;
end;

procedure TForm1.Table1NameValidate(Sender: TField);
begin
//проверка пол€ на наличие индекса
 if (Table1Name.Required) and (Table1Name.isNull)
 then Raise Exception.Create('ѕоле индекса не может быть пустым!');
end;

procedure TForm1.Table1AgeGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
//если текст не редактируетс€, тогда в %, иначе - без
 if DisplayText
 then Text:=Table1Age.AsString+'%'
 else Text:=UpperCase(Table1Age.AsString);
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
 DataSource2.DataSet:=nil;
 DataSource1.DataSet:=Table2;
 Table2.Active:=true;
end;

procedure TForm1.DataSource1DataChange(Sender: TObject; Field: TField);
begin

end;

//управление отображением записей набора данных
procedure TForm1.Button14Click(Sender: TObject);
var
 n:integer;
begin
//отключение отображени€ записей в визуальных компонентах
 Table1.DisableControls;
 Table1.First;
 for n:=1 to Table1.RecordCount do
  begin
  //обработка записи набора данных Table1
   Table1.Next;
  end;
//включение отображени€ записей в визуальных компонетах
 Table1.EnableControls;
end;

end.
