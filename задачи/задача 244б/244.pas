program fffffff;
type
 mas= array[1..100] of integer;
var
        a : mas;
        n, i : integer;
        t:text;
        h:string;
begin
assign (t, 'zz1.txt'); 
append(t);
repeat

    write('Введите n = ');
    readln(n);
    writeln(t, 'При n=', n); 
        for i:= 1 to n do
        read (a[i]);
        writeln(t, 'a[',i,']= ',a[i]);
        i := 1;
     while (i <= n) and (Odd (a[i])) do Inc (i);
        if i > n then
                        writeLn ('0')   
                     else 
                    
                        writeLn ('Номер первого чётного элементы = ',i);
                     
                        writeLn (t, 'Номер первого чётного элементы = ',i);
                        writeln('Продолжить ввод элементов?');
                        if h<>'da' then readln(h);
                        readln(h);
                        until not(h='Yes');
                        close(t);           
end.