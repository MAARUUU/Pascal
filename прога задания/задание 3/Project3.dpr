program Project3;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Project3a},
  Unit2 in 'Unit2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TProject3a, Project3a);
  Application.Run;
end.
