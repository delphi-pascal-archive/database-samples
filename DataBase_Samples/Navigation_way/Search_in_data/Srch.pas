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
//поиск без учета регистра
//можно не вводить слово целиком
 if not (CheckBox1.Checked or CheckBox2.Checked) then
  begin
   MessageDlg('Ќе заданы услови€ поиска!',mtInformation,[mbOK],0);
   exit;
  end;
//поиск одновременно по двум пол€м Name и Price
 if CheckBox1.Checked and CheckBox2.Checked then
  begin
   KeyFields:='Name;Price';
   KeyValues:=VarArrayOf([Edit1.Text,Edit2.Text]);
  end
//поиск по одному из двух полей
 else
  begin
   //по полю Name
   if CheckBox1.Checked then
    begin
     KeyFields:='Name';
     KeyValues:=Edit1.Text;
    end;
    //ѕо полю Price
    if CheckBox2.Checked then
     begin
      KeyFields:='Price';
      KeyValues:=Edit2.Text;
     end;
  end;
//поиск выполн€етс€ независимо от регистра букв с
//возможностью частичного совпадени€
 Options:=[loCaseInsensitive,loPartialKey];
//запись не найдена
 if not Table1.Locate(KeyFields,KeyValues,Options) then
  begin
   Beep;
   MessageDlg('«апись не найдена!',mtInformation,[mbOK],0);
   exit;
  end;
}  
end;

procedure TForm1.Edit3Change(Sender: TObject);
var
 strField:string;
begin
//если режим поиска выключен, то выйти из процедуры
 if not CheckBox3.Checked then Exit;
//выбрать поле поиска
 case RadioGroup1.ItemIndex of
  0:strField:='Name';
  1:strField:='Firm';
  2:strField:='City';
 end;
//выполнить поиск
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
//поиск с учетом регистра
//вводить слово целиком
 KeyFields:='Name';
 KeyValues:=Edit4.Text;
//пор€док полей результата отличаетс€ от пор€дка полей набора данных
 ResultFields:='Name;Price;Code';
//выполнение поска
 vrntResult:=Table1.Lookup(KeyFields,KeyValues,ResultFields);
//проверка, успешный ли поиск
 if not VarIsNull(vrntResult) then
  begin
//поиск завершилс€ успешно
   //анализ пол€ Name
   if not VarIsNull(vrntResult[0])
   then strResult:='Ќазвание '+String(vrntResult[0])
   else strResult:='Ќазвание: -';
   //анализ пол€ Price
   if not VarIsNull(vrntResult[1])
   then strResult:=strResult+#13#10+'÷ена: '+String(vrntResult[1])
   else strResult:=strResult+#13#10+'÷ена: -';
   //анализ пол€ Code
   if not VarIsNull(vrntResult[2])
   then strResult:=strResult+#13#10+' од: '+String(vrntResult[2])
   else strResult:=strResult+#13#10+' од: -';
   //ввод значений полей найденной записи
   MessageDlg('ƒанные найденной записи: '+#13#10+strResult,mtInformation,[mbOK],0);
  end
//поиск завершилс€ неудачно
 else
  begin
   Beep;
   MessageDlg('«апись не найдена!',mtInformation,[mbOK],0);
  end;
}  
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
//поиск с учетом регистра
//вводить слово только целиком
 if not Table1.Locate('Name',Edit5.Text,[])
 then ShowMessage('«апись не найдена');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
//поиск с учетом регистра
//можно не вводить слово целиком
 if not Table1.Locate('Name',Edit6.Text,[loCaseInsensitive, loPartialKey])
 then ShowMessage('«апись не найдена');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
{
//поиск с учетом регистра
//вводить слово только целиком
 if not Table1.Locate('Name;Price',VarArrayOf([Edit7.Text,Edit8.Text]),
                               [loCaseInsensitive, loPartialKey])
 then ShowMessage('«апись не найдена');
} 
end;

end.
