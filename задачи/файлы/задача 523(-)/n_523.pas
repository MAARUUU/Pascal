program n_523a;

var
  f, g: text;
{$include 'n_523include.pas' }
begin
  assign(f, 'input.txt');
  assign(g, 'output.txt');
  reset(f);
  rewrite(g);
  FileWork(f, g); 
  close(f);
  close(g);
end.