var f:text;
a:array[1..100] of longint;
n,s:longint;
i,j,res:byte;
begin
  assign(f,'75.inp');
  reset(f);
  read(f,n,s);
  for i:=1 to n do read(f,a[i]);
  close(f);
  for i:=1 to n do
    for j:=1 to n do if j<>i then if a[i]+a[j]=s then inc(res);
  assign(f,'75.out');
  rewrite(f);
  write(f,res div 2);
  close(f);
end.
{Cap so CAPSO}