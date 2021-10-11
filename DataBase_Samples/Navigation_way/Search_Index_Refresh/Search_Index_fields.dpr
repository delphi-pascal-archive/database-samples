program Search_Index_fields;

uses
  Forms,
  Search_Index in 'Search_Index.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
