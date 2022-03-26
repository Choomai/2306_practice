var f:text;
compr,uncompr:string;
i,j,tam:byte;
begin
  assign(f,'094.inp');
  reset(f);
  read(f,compr);
  close(f);
  for i:=1 to length(compr) do
    if compr[i] in ['0'..'9'] then
    begin
      val(compr[i],tam);
      for j:=1 to tam-1 do uncompr:=uncompr+compr[i+1];
    end
    else uncompr:=uncompr+compr[i];
  assign(f,'094.out');
  rewrite(f);
  write(f,uncompr);
  close(f);
end.
{Giai nen dang 2n=nn}