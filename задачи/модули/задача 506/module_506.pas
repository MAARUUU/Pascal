unit module_506;

interface

type 
    bagazh=record
      kol: integer;
      ves: real;
      end;
      
procedure vvod( var f: file of bagazh);
procedure max(var f: file of bagazh);
procedure poiskpas(var f: file of bagazh);
procedure vivodtext(var t:text; var f: file of bagazh);

implementation

uses crt;


procedure vvod( var f: file of bagazh);
var
     b: bagazh;
     i,n,ves: integer;
begin
write('Количество пассажиров: ');
readln(n);
for i:=1 to n do
with b do
     begin
     writeln('Багаж № ',i);
     write('Количество вещей: ');
     readln(kol);
     write('Общий вес: ');
     readln(ves);
     write(f,b);
      end;
      end;
  
    
procedure max(var f: file of bagazh);
 var 
     b: bagazh;
     i,n,maxkol: integer;
     maxves: real;
begin
i:=0;
while not eof(f) do
      begin
      read(f,b);
      inc(i);
      with b do
           if i=1 then
              begin
              maxkol:=kol;
              maxves:=ves;
              end  else
                   begin
                   if kol>maxkol then maxkol:=kol;
                   if ves>maxves then maxves:=ves;
                   end;
      end;
     end;
     
     
procedure poiskpas(var f: file of bagazh);
 var 
     b: bagazh;
     i,maxkol: integer;
     maxves: real;
begin
i:=0;
while not (eof(f)) do
      begin
      read(f,b);
      with b do
           if (kol=maxkol) and (ves=maxves) then i:=i+1;
      end;
if i=0 then writeln('Нет пассажиров, багаж которых превышает багаж остальных пассажиров по весу и количеству вещей')
   else if i=1 then writeln('Есть пассажир, багаж которого превышает багаж остальных пассажиров по весу и количеству вещей')
        else writeln('Есть несколько пассажиров, багаж которых превышает багаж остальных пассажиров по весу и количеству вещей');
   end;
   
   
procedure vivodtext(var t:text; var f: file of bagazh);
var 
   c: bagazh; 
begin
  while not (Eof(f)) do 
  begin
    read(f, c);           
    write(t, c );
    write(t, '   ');
  end;
end;   
end.