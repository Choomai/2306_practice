var f:text;
a,b,c:longint;
begin
  assign(f,'68.inp');
  reset(f);
  read(f,a,b,c);
  close(f);
  assign(f,'68.out');
  rewrite(f);
  if (a+b>c) and (b+c>a) and (a+c>b) then write(f,'Duoc') else
    write(f,'Khong');
  close(f);
end.
{Kiem tra tam giac hop le}