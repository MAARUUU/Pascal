unit module531;

interface

type

PUzel=^TUzel; // создание типа узла
TUzel=record
x:real;
next:PUzel;
end;


 procedure AddFirst(var f, p: PUzel);
 procedure AddAfter(var old: PUzel; a: PUzel);
 procedure BuildSpisok(var f, d: PUzel; var n: integer);
 procedure DelFirstElement(var f, a: PUzel);
 procedure DelSpisok(var f: PUzel);
 procedure WriteText(var t: text; var f: PUzel);
 procedure Calculation(var f, d: PUzel; var t: text);

implementation

procedure AddFirst(var f, p: PUzel); // добавление узла p в голову списка f
 begin
  p^.next := f;
  f := p;
 end;


 procedure AddAfter(var old: PUzel; a: PUzel); // добавление узла a после заданного узла old
 begin
  a^.next := old^.next;
  old^.next := a; 
 end;
 

 procedure BuildSpisok(var f, d: PUzel; var n: integer); // создание списка
  var a: PUzel;      // a - указатель на создаваемый узел
                     // d - указатель на хвост
  i: integer; y: real;
 begin
  f := nil;
  write('введите n:');
  readln(n);
  for i := 1 to n do 
   begin
   new(a);  //
   write('введите число: ');
    readln(y);
    a^.x := y;
    if (f = nil) then 
    begin
    AddFirst(f, a); d := f;
    end else
    begin
    AddAfter(d, a); d := a;
    end;
   end;
 end;
 
 
 procedure DelFirstElement(var f, a: PUzel); // выделение первого эл-та из списка 
 begin
  a := f; 
  f := f^.next;
  if (f <> nil) then  a^.next := nil;
 end;
 

 procedure DelSpisok(var f: PUzel); // удаление списка
  var a: PUzel;
   begin
    while (f <> nil) do
     begin
      DelFirstElement(f, a);
      dispose(a);
     end;
   end;
   
 
 procedure WriteText(var t: text; var f: PUzel); // вывод в текстовый файл
  var p: PUzel;
   begin
    p := f;
    while (p <> nil) do
    begin
    write( t, p^.x, ' ');
    p := p^.next;
    end;
    writeln(t);
   end;


 procedure Calculation(var f, d: PUzel; var t: text); // вычисления 
  var p, p1: PUzel; pp: real;
  begin 
   pp:=0;
   p := f;
   p1 := d;
   repeat
   pp := p^.x - p1^.x;
   writeln(t, 'rezult=', pp);
   p := p^.next;
   until (p1 = p);
   end;
   end.




