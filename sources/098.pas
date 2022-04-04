var f:text;
a:array[1..100,1..100] of longint;
i,j,m,n,vt,min,max:longint;
begin
  assign(f,'098.inp');
  reset(f);
  readln(f,n,m);
  for i:=1 to n do
    for j:=1 to m do read(f,a[i,j]);
  close(f);
  assign(f,'098.out');
  rewrite(f);
  for i:=1 to n do
  begin
    min:=a[i,1];
    for j:=1 to n do
      if min>=a[i,j] then
      begin
        min:=a[i,j];
        vt:=j;
      end;
    max:=a[i,vt];
    for j:=1 to n do if max<=a[j,vt] then max:=a[j,vt];
    if min=max then write(f,'(',i,',',vt,')');
  end;
  close(f);
end.
{Phan tu yen ngua(min=n,max=m)}