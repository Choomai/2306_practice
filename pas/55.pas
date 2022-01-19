var f:text;
n,m,tong:longint;
a:array[1..100] of longint;
i,dem:byte;
begin
  assign(f,'55.inp');
  reset(f);
  read(f,n,m);
  for i:=1 to n do
  read(f,a[i]);
  close(f);
  assign(f,'55.out');
  rewrite(f);
  tong:=a[1];
  for i:=2 to n do
  if tong+a[i]<=m then tong:=tong+a[i] else
  begin
    inc(dem);
    tong:=a[i];
  end;
  inc(dem);
  write(f,dem);
  close(f);
end.