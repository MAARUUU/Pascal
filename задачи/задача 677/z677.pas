
   procedure VodMatr(var n:integer; var a:non; t:text);
 var i,j: integer;
begin
  
  for i := 1 to n do 
  begin
    for j := 1 to n do 
    begin
      {a[i, j] := random(10); }
      write('a[', i, ',', j, ']= ');
      readln(a[i, j]);
     { write(a[i, j]:4);}
      write(t, a[i,j]:4);
    end; 
    writeln;
    writeln(t);
    end;
  writeln();
  end;
  
 procedure VivodMatra( var n:integer; a: non; t:text);
var
i,j:integer;
begin
   for i := 1 to n do 
  begin
    for j := 1 to n do 
    begin
      write(a[i, j]:4);
      write(t, b[i,j]:4);
  end;
    writeln();
    writeln(t);
end;
end; 
  
  procedure ZamMatr(var n:integer; var a,b: non);
  var 
  i,j,k,r: integer;
  begin
  for i := 1 to n do 
  begin
    for j := 1 to n do 
    begin
      for k := 1 to n do 
      begin
        for r := 1 to n do 
          if (k <> i) and (r <> j) then 
            b[i, j] := b[i, j] + a[k, r]; 
    end; 
  end;
  end;
    writeln();  
     end;
procedure VivodMatr( var n:integer; b: non; t:text);
var
i,j:integer;
begin
   for i := 1 to n do 
  begin
    for j := 1 to n do 
    begin
      write(b[i, j]:4);
      write(t, b[i,j]:4);
  end;
    writeln();
    writeln(t);
end;
end;