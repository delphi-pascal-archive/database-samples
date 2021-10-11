unit Nt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, ExtCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Table1: TTable;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    Button4: TButton;
    Table2: TTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button5: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
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
//�������� ������ ������
 Table1.Active:=false;
//��������� ������� ��
 Table1.DatabaseName:='My_Data';//����� Data
 Table1.TableName:=Edit1.Text;
 Table1.TableType:=ttParadox;
//�������� ����� �������                          
 Table1.FieldDefs.clear;
 Table1.FieldDefs.Add('Code',ftAutoinc,0,true); //0 - ������ ����
 Table1.FieldDefs.Add('Name',ftString,20,true);
 Table1.FieldDefs.Add('Date',ftDate,0,true);
//�������� �������� �������
 Table1.IndexDefs.Clear;
 Table1.IndexDefs.Add('','Code',[ixPrimary,ixUnique]);
 Table1.IndexDefs.Add('indName','Name',[ixCaseInsensitive]);
//�������� �������
 Table1.CreateTable;
//��������� �������� �������
 Table1.IndexName:='indName';
//�������� ������ ������, ���������� ������ (������) ��������
 Table1.Active:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 Table1.DatabaseName:='My_Data';//����� Data
 Table1.TableName:=Edit2.Text;
 Table1.Active:=false;
 Table1.DeleteTable;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 Table1.DatabaseName:='My_Data';//����� Data
 Table1.TableName:=Edit1.Text;
 Table1.Active:=false;
 Table1.RenameTable(Edit3.Text);
 Edit2.Text:=Edit3.Text;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
 n:longint;
begin
 try
  // ���������� ������� �� �������� ���������
  Table2.LockTable(ltWriteLock);
  // �������� �������
  Table2.First;
   for n:=1 to Table2.RecordCount do
    begin
     Table2.Edit;
     Table2.FieldByName('Price').AsFloat:=
                   Table2.FieldByName('Price').AsFloat+100;
     Table2.Next;
    end;
 finally
  //������ ����������
  Table2.UnlockTable(ltWriteLock);
  Table2.Post;
 end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
//������ ����������
 Table2.UnlockTable(ltWriteLock);
end;

end.
