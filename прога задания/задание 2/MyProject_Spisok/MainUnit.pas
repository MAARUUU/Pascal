unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, mod139;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    file1: TMenuItem;
    work1: TMenuItem;
    savetotipfile1: TMenuItem;
    savetotextfile1: TMenuItem;
    inputinfo1: TMenuItem;
    buildspisok1: TMenuItem;
    delspisok1: TMenuItem;
    procedure buildspisok1Click(Sender: TObject);
    procedure delspisok1Click(Sender: TObject);
    procedure savetotextfile1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.buildspisok1Click(Sender: TObject);
begin
n := StrToInt(InputBox('введите n: ', ' ', ' '));
BuildSpisok(head, n);
end;

procedure TForm1.delspisok1Click(Sender: TObject);
begin
DelSpisok(head);
end;

procedure TForm1.savetotextfile1Click(Sender: TObject);
begin
assignfile(t, '139rez.txt');
append(t);
write_in_text(t, head);
closefile(t);
end;

end.
