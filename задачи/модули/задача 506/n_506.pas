program z_506g;

uses module_506; 
 var 
     b,c: bagazh;
     t:text;
     f: file of bagazh;
     maxkol: integer;
     maxves: real;
     
begin
assign(t, 'n_506(1).txt');
assign(f, 'n_506(2).txt');
append(t);
rewrite(f);
vvod(f); // заполнение типизированного файла
max(f); // поиск максимального кол-ва и веса
writeln(t, 'Максимальныое количество:',maxkol);
writeln(t, 'Максимальный вес:',maxves);
poiskpas(f); //поиск пассажира 
vivodtext(t,f); // вывод результата в текстовый файл
close(t);
close(f); 
end.