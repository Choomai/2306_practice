var f:text;
a:string;
i:byte;
begin
  assign(f,'049.inp');
  reset(f);
  read(f,a);
  close(f);
  assign(f,'049.out');
  rewrite(f);
  for i:=1 to length(a) do
    if a[i] in ['0'..'9'] then write(f,a[i]);
  close(f);
end.
{Loc so trong xau}