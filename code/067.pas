var f:text;
n:real;
begin
  assign(f,'067.inp');
  reset(f);
  read(f,n);
  close(f);
  assign(f,'067.out');
  rewrite(f);
  if sqr((trunc(sqrt(n))))=n then write(f,n:0:0,' la so chinh phuong') else
    write(f,n:0:0,' khong phai la so chinh phuong');
  close(f);
end.
{Kiem tra so chinh phuong}