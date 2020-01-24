unit Unit2;

interface 
uses SysUtils,Dialogs; 
type 
Zp=packed record 
Fam,Name:string[20]; 

end; 

PUzel=^TUzel; 
TUzel=record 
X:Zp; 
next:PUzel; 
pred:PUzel; 
end; 

procedure AddFirst(var f:PUzel;a:PUzel); 
procedure AddAfter(var old:PUzel;a:PUzel); 
procedure BuildSpisok(var f:PUzel); 
procedure SvZapText(var F3:TextFile;var f:PUzel); 
procedure DelFirstElement(var f,a:PUzel); 
procedure DelSpisok1(var f:PUzel);
implementation 

procedure AddFirst(var f:PUzel;a:PUzel); 
begin 
a^.next:=f; 
if f<> nil then f^.pred:=a; 
f:=a; 
end; 
procedure AddAfter(var old:PUzel;a:PUzel); 
begin 
a^.next:=old^.next; 
old^.next:=a; 
if a^.next<>nil then a^.next^.pred:=a; 
a^.pred:=old; 
end; 
procedure BuildSpisok(var f:PUzel); 
var 
a,d:PUzel; 
ch:char; 
begin 
f:=nil; 
repeat 
new(a); 
With a^.X do 
begin 
fam:=InputBox('введите фамилию',' ',' ');
name:=InputBox('введите имя',' ',' ');
end; 
if f=nil then 
begin 
AddFirst(f,a); 
d:=f; 
end 
else 
begin 
AddAfter(d,a); 
d:=a; 
end; 
ch:=InputBox('хотите выйти, нажмите Y',' ',' ')[1]; 
until (ch='Y') or (ch='y'); 
end; 

procedure SvZapText(var F3:TextFile;var f:PUzel); 
var p:PUzel; a:Zp; S:string[80]; 
begin 
p:=f; 
while (p <> nil) do 
begin 
s:=' '; 
with p^.x do 
s:= s + Fam +' '+Name + ',';
write(F3,s); 
p := p^.next; 
end;
write(F3,';');
writeln(F3);
end; 

procedure DelFirstElement(var f,a:PUzel); 
begin 
a:=f; 
f:=f^.next; 
if f<>nil then f^.pred:=nil; 
end; 

procedure DelSpisok1(var f:PUzel);
var 
a:PUzel; 
begin
while f<>nil do
begin 
DelFirstElement(f,a); 
Dispose(a); 
end;
end; 

end.



 