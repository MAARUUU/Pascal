unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Unit2;

type
  TProject3a = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Build1: TMenuItem;
    Sptotext: TMenuItem;
    Delspisok: TMenuItem;
    dlgOpen1: TOpenDialog;
    N2: TMenuItem;
    procedure Build1Click(Sender: TObject);
    procedure SptotextClick(Sender: TObject);
    procedure DelspisokClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Project3a: TProject3a;
  first:PUzel;
  fileT:TextFile;

implementation 

{$R *.dfm} 


procedure TProject3a.Build1Click(Sender: TObject);
begin
BuildSpisok(first);
end;


procedure TProject3a.SptotextClick(Sender: TObject);
var s:string; 
begin
if dlgOpen1.Execute
then
s:= dlgOpen1.FileName
else
begin ShowMessage('Mistake OpenDial'); Exit;end;
AssignFile(fileT,s);
Append(fileT);
{ OpenTextFile(fileT); }
SvZapText(fileT,first);
CloseFile(fileT);

end;

procedure TProject3a.DelspisokClick(Sender: TObject);
begin
DelSpisok1(first);
end;

procedure TProject3a.N2Click(Sender: TObject);
begin
Close;
end;

end.

