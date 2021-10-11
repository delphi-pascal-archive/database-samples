unit Bnt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Grids, DBGrids, Db, DBTables;

type
  TForm1 = class(TForm)
    TabControl1: TTabControl;
    CheckBox1: TCheckBox;
    Table1: TTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
//разреш. фильтрация по частичн. совпад. и независ. от рег-ра букв
 Table1.FilterOptions:=[foCaseInsensitive];
//отключение фильтрации
 CheckBox1Click(Sender);
//первоначальное формирование выражения фильтра (для буквы А)
 TabControl1Change(Sender);
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
 if CheckBox1.Checked
 then Table1.Filtered:=false
 else Table1.Filtered:=true; 
end;

procedure TForm1.TabControl1Change(Sender: TObject);
begin
//формирование выражения фильтра
//фильтрация ведется по совпадению первой буквы фамилии
// стр. 586
 Table1.Filter:='Last_Name = '''+TabControl1.Tabs[TabControl1.TabIndex]+'*''';
end;

end.
