var f:text;
min,tam:string;
a,b,k,i:longint;
begin
  assign(f,'095.inp');
  reset(f);
  read(f,a,b,k);
  close(f);
  assign(f,'095.out');
  rewrite(f);
  min:='A';
  for i:=a to b do
    if i mod k=0 then
    begin
      str(i,tam);
      if tam<min then min:=tam;
    end;
  write(f,min);
  close(f);
end.
{Sap xep so theo thu tu tu dien}