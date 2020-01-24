unit module545;

interface

type

  PUzel = ^TUzel;// создание типа узла
  TUzel = record
    x: real;
    next: PUzel;
  end;


procedure AddFirst(var f, p: PUzel);
procedure AddAfter(var old: PUzel; a: PUzel);
procedure BuildSpisok(var f, d: PUzel; var n,m: integer);
procedure DelFirstElement(var f, a: PUzel);
procedure DelSpisok(var f: PUzel);
procedure write_in_text(var t: text; var f: PUzel);
procedure Calc(var f, d: PUzel; var t: text);

implementation

procedure AddFirst(var f, p: PUzel);// добавление узла p в голову списка f
begin
  p^.next := f;
  f := p;
end;


procedure AddAfter(var old: PUzel; a: PUzel);// добавление узла a после заданного узла old
begin
  a^.next := old^.next;
  old^.next := a;
end;

 procedure BuildSpisok(var f, d: PUzel; var n,m: integer); // создание списка
  var a: PUzel;      // a - указатель на создаваемый узел
                     // d - указатель на хвост
  i: integer; y: real;
 begin
  f := nil;
  write('введите n:');
  readln(n);
new(a);
for i:=2 to n do
begin
a:=a^.next;
a^.next:=a;
a^.x:=i;
end;
    if (f = nil) then
    begin
    AddFirst(f, a); d := f;
    end else
    begin
    AddAfter(d, a); d := a;
    end;
   end;



procedure DelFirstElement(var f, a: PUzel);// выделение первого эл-та из списка
begin
  a := f;
  f := f^.next;
  if (f <> nil) then  a^.next := nil;
end;


procedure DelSpisok(var f: PUzel);// удаление списка
var
  a: PUzel;
begin
  while (f <> nil) do
  begin
    DelFirstElement(f, a);
    dispose(a);
  end;
end;


procedure write_in_text(var t: text; var f: PUzel);// вывод в текстовый файл
var
  p: PUzel;
begin
  p := f;
  while (p <> nil) do
  begin
    write( t, p^.x, ' ');
    p := p^.next;
  end;
  writeln(t);
end;


procedure Calc(var f, d: PUzel; var t: text);
var
 a: PUzel;
 m,i:integer;
begin
repeat
write('m=');
read(m);
until(m>0); //ѕока в списке не останетс€  всего один элемент
while(a<>a^.next) do
begin
for i:=1 to m-1 do
a:=a^.next;
writeln(t, a);
a^.next:=a^.next^.next;
writeln(t, a^.x);
end;
end;
end.