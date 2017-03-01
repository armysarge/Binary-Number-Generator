program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Random Binary Generator';
  Application.CreateForm(Tform1, form1);
  Application.Run;
end.
