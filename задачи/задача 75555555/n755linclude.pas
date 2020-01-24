function exponent(x: real; n: integer): real;
var
  i: integer;
  e: real;
begin
  e := 1;
  if n = 0 then 
    exponent := 1
  else 
    for i := 1 to n do 
      e := e * x;
  exponent := e;
end;

function FACT(n: integer): longint;
var
  i: integer;
  t: longint;
begin
  t := 1;
  for i := 2 to n do 
    t := t * i;
  FACT := t;
end;

function MAN(t:real):real;
var
  x, sum, t: real;
  k: integer;
  u: text;
  d: string;
sum := 0;
  k := 0;
  repeat
    t := (exponent(-1.0, k+1 ) * exponent(x, 4 * k )) / (FACT( 2 * k ) * exponent(3, 4*k ));
    sum := sum + t;
    writeln(sum);
    writeln(u,sum);
    k := k + 1;
  until abs(t) < eps;
  writeln('Сумма: ',sum:0:3);
  writeln(u,'Сумма: ', sum:0:3);