program fff;

type
  matr = array [0..7, 0..7] of integer;

var
  a: matr;
  x, y, i, j: integer;
  t: text;
  {$include '690a.pas'}


begin
  assign(t, 'q.txt'); 
  append(t); 
  writeln('Исходная матрица:');
  writeln(t, 'Исходная матрица:');
  VodMatr(a);
  VuvodMatr(a, t);
  writeln;
  writeln('Последовательность b:'); 
  writeln(t, 'Последовательность b:');
  writeln;
  writeln(t);
  x := 1; 
  y := 7; 
  i := x; 
  repeat
    
    for j := x to y do 
      
      write(t, a[i, j]);
    write(' '); 
    
    for i := x + 1 to y do 
      write(t, a[i, j]);
    write(' '); 
    
    for j := y - 1 downto x do 
      write(t, a[i, j]); 
    write(' ');
    
    for i := y - 1 downto x + 1 do 
      write(t, a[i, j]);
    write(' '); 
    
    x := x + 1; 
    y := y - 1; 
    
  until((x = 8) and (y = 0));
  close(t); 
  
end. 

