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
{Vi tri POS}
{Trong hang co N nguoi, khong it hon a nguoi dung truoc, khong lon hon b nguoi dung sau, co ? vi tri co the dung trong hang}