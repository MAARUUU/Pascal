program n_136;

uses module136;

var
 first, old:PUzel;
 n: integer;
 t: text;

begin
  Assign(t, 'n_136.txt');
  append(t);
  BuildSpisok(first, old, n); // �������� ������
  writeln(t, '��� n=', n, ':');
  WriteText(t, first);// ����� � ��������� ����
  Calculation(first, old,  t); //����������
  DelSpisok(first); // �������� ������
  writeln(t);
  close(t);
end.