program m5; 
var a,b,c,x1,x2,x3,x4,t,t1,t2,d:real; 
n:text; 
 begin
Assign(n,'m5.txt'); 
append(n); 
writeln ('Введите a,b,c'); 
readln (a,b,c);
writeln(n, 'При а=', a, ' При b=', b, ' При c=', c);
d:=sqr(b)-4*a*c; 
  if d>0 then 
    begin 
     t1:=(-b+sqrt(d))/(2*a); 
      if t1>0 then 
        begin 
         x1:=sqrt(t1); 
         x2:=-sqrt(t1); 
         writeln ('x1=',x1:3:2, 'x2=',x2:3:2); 
         writeln (n, 'x1=',x1:3:2, 'x2=',x2:3:2); 
        end 
         else 
          writeln('x1, x2 не имеют корней'); 
          writeln(n, 'x1, x2 не имеют корней'); 
     t2:=(-b-sqrt(d))/(2*a); 
      if t2>0 then 
        begin 
         x3:=sqrt(t2); 
         x4:=-sqrt(t2); 
         writeln ('x3=',x3:3:2, 'x4=',x4:3:2); 
         writeln(n,'x3=',x3:3:2, 'x4=',x4:3:2); 
        end 
         else 
          writeln('x3, x4 не имеют корней'); 
          writeln(n,'x3, x4 не имеют корней'); 
     end 
      else 
       if d=0 then 
        begin 
         t:= -b/2*a; 
         x1:=sqrt(t); 
         x2:=-sqrt(t); 
         writeln ('x1=',x1:3:2, 'x2=',x2:3:2); 
         writeln (n,'x1=',x1:3:2, 'x2=',x2:3:2); 
        end 
         else 
          if d<0 then
            begin
             writeln ('нет корней'); 
             writeln (n,'нет корней'); 
            end;
close(n); 
end.