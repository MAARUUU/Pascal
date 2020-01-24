unit mod139;

interface

type  
  PUzel = ^S;  
  S = record
    x: real;
    next: PUzel;
  end;
var
  head: PUzel; ch: char;
  n: integer; t: TextFile;

procedure AddFirst(var f, p: PUzel);
procedure AddAfter(var old: PUzel; a: PUzel);
procedure BuildSpisok(var f: PUzel; var n: integer);
procedure DelSpisok(var f: PUzel);
procedure write_in_text(var t: text; var f: PUzel);

implementation

 {вставка узла p в голову f}
procedure AddFirst(var f, p: PUzel);
begin
  p^.next := nil;
  f := p;
end;

 {добавление элементов списка}
procedure AddAfter(var old: PUzel; a: PUzel);
begin
  a^.next := old^.next;
  old^.next := a;
end;

 {создание списка}
procedure BuildSpisok(var f: PUzel; var n: integer);
var
  p, d: PUzel;
  i, fc: integer; dr, s: real;
begin
  f := nil; 
  fc := 1;
  s := 0;
  for i := 1 to n do 
  begin
    new(p);
  fc := fc * i; {расчет факториала}
  dr := 1 / fc; {расчет дроби}
  s := s + dr; {суммирование членов}
  p^.x := i * s;{получение очередного члена}
    if (f = nil) then 
    begin
      AddFirst(f, p); d := f; 
    end else
    begin
      AddAfter(d, p); d := p; 
    end;
  end;
end;

 {удаление списка}
procedure DelSpisok(var f: PUzel);
var
  a: PUzel;
begin
  repeat
    a := f;
    f := f^.next;
    dispose(a);
  until (f = nil);
end;
 
  {вывод в текстовый файл}  
procedure write_in_text(var t: text; var f: PUzel);
  var p: PUzel;
   begin
    p := f;
    while (p <> nil) do
    begin
    write(t, p^.x:5:2, '; ');
    p := p^.next;
    end;
    writeln(t);
   end;
end.   
 