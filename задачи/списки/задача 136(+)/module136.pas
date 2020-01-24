unit module136;

interface

type

  PUzel = ^TUzel;// �������� ���� ����
  TUzel = record
    x: real;
    next: PUzel;
  end;


procedure AddFirst(var f, p: PUzel);
procedure AddAfter(var old: PUzel; a: PUzel);
procedure BuildSpisok(var f, d: PUzel; var n: integer);
procedure DelFirstElement(var f, a: PUzel);
procedure DelSpisok(var f: PUzel);
procedure WriteText(var t: text; var f: PUzel);
procedure Calculation(var f, d: PUzel; var t: text);

implementation

procedure AddFirst(var f, p: PUzel);// ���������� ���� p � ������ ������ f
begin
  p^.next := f;
  f := p;
end;


procedure AddAfter(var old: PUzel; a: PUzel);// ���������� ���� a ����� ��������� ���� old
begin
  a^.next := old^.next;
  old^.next := a;
end;

 procedure BuildSpisok(var f, d: PUzel; var n: integer); // �������� ������
  var a: PUzel;      // a - ��������� �� ����������� ����
                     // d - ��������� �� �����
  i: integer; y: real;
 begin
  f := nil;
  write('������� n:');
  readln(n);
  for i := 1 to n do
   begin
   new(a);  //
   write('������� �����: ');
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


procedure DelFirstElement(var f, a: PUzel);// ��������� ������� ��-�� �� ������
begin
  a := f;
  f := f^.next;
  if (f <> nil) then  a^.next := nil;
end;


procedure DelSpisok(var f: PUzel);// �������� ������
var
  a: PUzel;
begin
  while (f <> nil) do
  begin
    DelFirstElement(f, a);
    dispose(a);
  end;
end;


procedure WriteText(var t: text; var f: PUzel);// ����� � ��������� ����
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


procedure Calculation(var f, d: PUzel; var t: text); // ����������
var
 p: PUzel;
 Sum, rezult:real;
begin
p:=f;
Sum:=0;
rezult:=1;
while p<>nil do
begin
Sum:=Sum+p^.x;
rezult:=rezult*p^.x;
p:=p^.next;
end;
writeln(t, 'rezult=',rezult);
writeln(t, 'Sum=',Sum);
   end;
   end.


