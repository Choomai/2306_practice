var f:text;
a,b,n,tl:longint;
begin
  assign(f,'106.inp');
  reset(f);
  read(f,n,a,b);
  close(f);
  assign(f,'106.out');
  rewrite(f);
  if a+1>n-b then tl:=a+1 else tl:=n-b;
  if n+1<tl then write(f,0) else write(f,n-tl+1);
  close(f);
end.
{Vị trí POS}
{Trong hàng có N người, không ít hơn a người đứng trước, không lớn hơn b người đứng sau, có ? vị trí có thể đứng trong hàng}