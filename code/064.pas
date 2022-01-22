var f:text;
n,tong:longint;
begin
  assign(f,'064.inp');
  reset(f);
  read(f,n);
  close(f);
  assign(f,'064.out');
  rewrite(f);
  tong:=((2+2*n)*n) div 2;
  write(f,tong);
  close(f);
end.
{Tinh tong 2+4+6+...+2n}