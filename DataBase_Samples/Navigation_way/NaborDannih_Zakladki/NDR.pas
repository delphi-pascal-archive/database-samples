unit NDR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, DBTables, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Table1: TTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    Button3: TButton;
    Edit1: TEdit;
    Bevel2: TBevel;
    Button4: TButton;
    Label5: TLabel;
    Bevel3: TBevel;
    Panel1: TPanel;
    Label6: TLabel;
    Button5: TButton;
    Button6: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    ProgressBar1: TProgressBar;
    Bevel4: TBevel;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Label11: TLabel;
    Bevel5: TBevel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  WorkBreak:boolean;
  
implementation

var
 RecNum:longint;

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
 s:real;
 n:longint;
begin
 s:=0;
//установка текущего указателя на первую запись
 Table1.First;
 for n:=1 to Table1.RecordCount do
  begin
   s:=s+Table1.FieldByName('Salary').AsFloat;
   //перемещение текущего указателя на следующую запись
   Table1.Next;
   Sleep(120);
   Label1.Caption:=FloatToStr(s);
   Application.ProcessMessages;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
 s:real;
 n:longint;
begin
 s:=0;
//установка текущего указателя на первую запись
 Table1.Last;
 for n:=1 to Table1.RecordCount do
  begin
   s:=s+Table1.FieldByName('Salary').AsFloat;
   //перемещение текущего указателя на следующую запись
   Table1.Prior;
   Sleep(120);
   Label3.Caption:=FloatToStr(s);
   Application.ProcessMessages;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 Table1.RecNo:=StrToInt(Edit1.Text);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
 s:real;
// n:longint;
begin
 s:=0;
//установка текущего указателя на первую запись 
 Table1.First;
 while not Table1.EOF do//пока не конец файла
  begin
   s:=s+Table1.FieldByName('Salary').AsFloat;
   //перемещение текущего указателя на следующую запись
   Table1.Next;
   Sleep(120);
   Label5.Caption:=FloatToStr(s);
   Application.ProcessMessages;
   if Application.Terminated then break;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 Button5.Enabled:=true;
 Button6.Enabled:=false;
 WorkBreak:=false;
end;

procedure TForm1.Button5Click(Sender: TObject);
label 10;
var
 s:real;
begin
 Button5.Enabled:=false;
 Button6.Enabled:=true;
 s:=0;
//число записей не больше 32767
 ProgressBar1.Max:=Table1.RecordCount;
 Table1.Disablecontrols;//отключение набора данных
 Table1.First;
 while not Table1.EOF do//пока не конец файла
  begin
   s:=s+Table1.FieldByName('PhoneExt').AsFloat;
   Label10.Caption:=FloatTostr(s);
   Application.ProcessMessages;
   ProgressBar1.Position:=Table1.RecNo;
   Label8.Caption:=
    IntToStr(Round(ProgressBar1.Position/ProgressBar1.Max*100))+'%';
   if WorkBreak then goto 10;
   Table1.Next;
   Sleep(50);
  end;
// Label10.Caption:='Summ: '+FloatTostr(s);
 Label10.Caption:=FloatTostr(s);
10:
 Table1.EnableControls;
 ProgressBar1.Position:=0;
 Label8.Caption:='';
 Button5.Enabled:=true;
 Button6.Enabled:=false;
 WorkBreak:=false;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
 WorkBreak:=true;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
//запоминание номера текущей записи
 RecNum:=Table1.RecNo;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
//переход на запомненную запись
 Table1.First;
 Table1.MoveBy(RecNum-1);
end;

procedure TForm1.Button9Click(Sender: TObject);
var
 bm:TbookMark;
 s:real;
begin
//создание закладки bm
 bm:=Table1.GetBookmark;
 Table1.DisableControls;
 Table1.First;
 while not Table1.EOF do
  begin
   s:=s+Table1.FieldByName('Salary').AsFloat;
   Table1.Next;
   Sleep(50);
   Label5.Caption:=FloatToStr(s);
   Application.ProcessMessages;
   if Application.Terminated then break;
  end;
//переход на закладку bm
 if Table1.BookmarkValid(bm) then Table1.GotoBookmark(bm);
//освобождение закладки bm
 if Table1.BookmarkValid(bm) then Table1.FreeBookmark(bm);
 Table1.EnableControls;
end;

end.
