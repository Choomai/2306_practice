var f:text;
m,n:integer;
a:array[1..1000,1..1000] of byte;
cnt:array[0..255] of byte;
i,j,sl:byte;
begin
  assign(f,'092.inp');
  reset(f);
  read(f,m,n);
  for i:=1 to m do
    for j:=1 to n do read(f,a[i,j]);
  close(f);
  for i:=1 to m-1 do
    for j:=1 to n-1 do
    begin
      if (a[i,j]=a[i+1,j]) and (a[i,j]=a[i,j+1]) and (a[i,j]=a[i+1,j+1]) then inc(cnt[a[i,j]]);
    end;
  for i:=0 to 255 do if cnt[i]>sl then sl:=cnt[i];
  assign(f,'092.out');
  rewrite(f);
  write(f,sl);
  close(f);
end.
{Tim max sl hinh vuong cung gt trong mang 2 chieu}