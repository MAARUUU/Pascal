program z755;

var
  x, sum, t, eps: real;
  k: integer;
  u: text;
  d: string;
 {$include 'n755linclude.pas'}
begin
  assign(u, 'z755B.txt');
  append(u);
  writeln('X = ');
  readln(x);
  writeln('E = ');
  readln(eps);
  writeln(u, 'X = ', x);
  writeln(u, 'E =', eps);
  sum := 0.0;
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
  close(u);
end.