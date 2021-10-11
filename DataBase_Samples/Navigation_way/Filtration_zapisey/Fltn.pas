unit Fltn;

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
    Button2: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button3: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
 Table1.Filtered:=false;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 Table1.Filtered:=true;
 Table1.Filter:=Edit1.Text;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
//пример 1
 Table1.FilterOptions:=[foCaseInsensitive];
//пример 2
 Table1.Filter:='';
 Table1.FilterOptions:=[foCaseInsensitive];
 Table1.Filtered:=true;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
//фильтровать по окладу
 if RadioButton1.Checked
 then Table1.Filter:='Ticket_price>'+Edit2.Text
                +'and Ticket_price<'+Edit3.Text;
//фильтровать по дате рождения
 if RadioButton2.Checked
 then Table1.Filter:='Event_date>'+Edit5.Text
                +'and Event_date<'+Edit6.Text;
//фильтровать по выражению
 if RadioButton3.Checked then Table1.Filter:=Edit4.Text;
//отключить фильтрацию
 if RadioButton4.Checked then Table1.Filter:='';
end;
 
end.














