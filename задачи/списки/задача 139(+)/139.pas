program n_139;

uses module139;

var
 first, old:PUzel;
 n: integer;
 t: text;

begin
  Assign(t, 'n_139.txt');
  append(t);
  BuildSpisok(first, old, n); // �������� ������
  writeln(t, '��� n=', n, ':');
  writeln(t, '�������� ������������������:');
  WriteText(t, first); // ����� � ��������� ����

  DelSpisok(first); // �������� ������
  writeln(t);
  close(t);
end.