program PWork_with_Spisok;

uses
  Forms,
  MainUnit in 'MainUnit.pas' {Form1},
  mod139 in 'mod139.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
