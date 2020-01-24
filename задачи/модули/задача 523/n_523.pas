program n_523a;

  
uses module_523;

var
  f, g: text;


begin
  assign(f, 'input.txt');
  assign(g, 'output.txt');
  reset(f);
  rewrite(g);
  FileWork(f, g); 
  close(f);
  close(g);
end.