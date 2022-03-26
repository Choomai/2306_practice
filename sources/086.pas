var f:text;
n,t,gt,i:longint;
begin
  assign(f,'086.inp');
  reset(f);
  read(f,n);
  close(f);
  gt:=1;
  for i:=1 to n do gt:=gt*i;
  for i:=2 to gt do if gt mod i=0 then inc(t);
  assign(f,'086.out');
  rewrite(f);
  write(f,t);
  close(f);
end.
{Tinh so luong uoc cua n!}