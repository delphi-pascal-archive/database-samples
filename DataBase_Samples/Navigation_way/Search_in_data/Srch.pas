unit Srch;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, DBTables, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Table1: TTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Bevel1: TBevel;
    Table2: TTable;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    GroupBox2: TGroupBox;
    Edit3: TEdit;
    CheckBox3: TCheckBox;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button2: TButton;
    Edit4: TEdit;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Button3: TButton;
    Edit5: TEdit;
    Bevel4: TBevel;
    Button4: TButton;
    Edit6: TEdit;
    Button5: TButton;
    Edit7: TEdit;
    Edit8: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
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
var
 KeyFields: string;
 KeyValues: variant;
 Options: TLocateOptions;
begin
{
//����� ��� ����� ��������
//����� �� ������� ����� �������
 if not (CheckBox1.Checked or CheckBox2.Checked) then
  begin
   MessageDlg('�� ������ ������� ������!',mtInformation,[mbOK],0);
   exit;
  end;
//����� ������������ �� ���� ����� Name � Price
 if CheckBox1.Checked and CheckBox2.Checked then
  begin
   KeyFields:='Name;Price';
   KeyValues:=VarArrayOf([Edit1.Text,Edit2.Text]);
  end
//����� �� ������ �� ���� �����
 else
  begin
   //�� ���� Name
   if CheckBox1.Checked then
    begin
     KeyFields:='Name';
     KeyValues:=Edit1.Text;
    end;
    //�� ���� Price
    if CheckBox2.Checked then
     begin
      KeyFields:='Price';
      KeyValues:=Edit2.Text;
     end;
  end;
//����� ����������� ���������� �� �������� ���� �
//������������ ���������� ����������
 Options:=[loCaseInsensitive,loPartialKey];
//������ �� �������
 if not Table1.Locate(KeyFields,KeyValues,Options) then
  begin
   Beep;
   MessageDlg('������ �� �������!',mtInformation,[mbOK],0);
   exit;
  end;
}  
end;

procedure TForm1.Edit3Change(Sender: TObject);
var
 strField:string;
begin
//���� ����� ������ ��������, �� ����� �� ���������
 if not CheckBox3.Checked then Exit;
//������� ���� ������
 case RadioGroup1.ItemIndex of
  0:strField:='Name';
  1:strField:='Firm';
  2:strField:='City';
 end;
//��������� �����
 Table2.Locate(strField,Edit3.Text,[loCaseInsensitive,loPartialKey]);
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
 Edit3Change(Sender);
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
 Edit3Change(Sender);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
 KeyFields,ResultFields: string;
 KeyValues,VrntResult: variant;
 strResult: string;
begin
{
//����� � ������ ��������
//������� ����� �������
 KeyFields:='Name';
 KeyValues:=Edit4.Text;
//������� ����� ���������� ���������� �� ������� ����� ������ ������
 ResultFields:='Name;Price;Code';
//���������� �����
 vrntResult:=Table1.Lookup(KeyFields,KeyValues,ResultFields);
//��������, �������� �� �����
 if not VarIsNull(vrntResult) then
  begin
//����� ���������� �������
   //������ ���� Name
   if not VarIsNull(vrntResult[0])
   then strResult:='�������� '+String(vrntResult[0])
   else strResult:='��������: -';
   //������ ���� Price
   if not VarIsNull(vrntResult[1])
   then strResult:=strResult+#13#10+'����: '+String(vrntResult[1])
   else strResult:=strResult+#13#10+'����: -';
   //������ ���� Code
   if not VarIsNull(vrntResult[2])
   then strResult:=strResult+#13#10+'���: '+String(vrntResult[2])
   else strResult:=strResult+#13#10+'���: -';
   //���� �������� ����� ��������� ������
   MessageDlg('������ ��������� ������: '+#13#10+strResult,mtInformation,[mbOK],0);
  end
//����� ���������� ��������
 else
  begin
   Beep;
   MessageDlg('������ �� �������!',mtInformation,[mbOK],0);
  end;
}  
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
//����� � ������ ��������
//������� ����� ������ �������
 if not Table1.Locate('Name',Edit5.Text,[])
 then ShowMessage('������ �� �������');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
//����� � ������ ��������
//����� �� ������� ����� �������
 if not Table1.Locate('Name',Edit6.Text,[loCaseInsensitive, loPartialKey])
 then ShowMessage('������ �� �������');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
{
//����� � ������ ��������
//������� ����� ������ �������
 if not Table1.Locate('Name;Price',VarArrayOf([Edit7.Text,Edit8.Text]),
                               [loCaseInsensitive, loPartialKey])
 then ShowMessage('������ �� �������');
} 
end;

end.
