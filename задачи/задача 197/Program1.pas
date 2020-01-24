program dsf;

type
  mas = array[1..30] of real;

var
  a, b: mas;
  i, n: integer;
  sum: real;
  t: text;
h:string;
begin
  assign(t, 'tui.txt'); 
  append(t);
  repeat

  write('Введите n = ');  
  readln(n);
  writeln(t, 'При n=', n);
  sum := 0;
  for i := 1 to n do 
  begin
    if odd(i) then 
    begin
      a[i] := i; 
      b[i] := i * i;
    end 
    else 
    begin
      a[i] := i / 2;
      b[i] := i * i * i;
    end;
  end;
  for i := 1 to n do 
  begin
    sum := sum + sqr(a[i] - b[i]);
    
    writeln('a[', i, ']=', a[i]);
    writeln('b[', i, ']=', b[i]);
  end;
  writeln('sum=', sum);
  for i := 1 to n do 
  begin
    write(t, 'a[', i, ']=', a[i]);
    writeln(' ');
    writeln(t, 'b[', i, ']=', b[i]);
  end;
  writeln(t, 'sum=', sum); 
  writeln('Продолжить ввод элементов?');
                        if h<>'da' then readln(h);
                        readln(h);
                        until not(h='Yes');
  close(t);
end.