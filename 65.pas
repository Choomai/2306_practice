var f:text;
h,gv1,gv2:real;
begin
  assign(f,'65.inp');
  reset(f);
  read(f,h,gv1);
  close(f);
  gv2:=sqrt(sqr(h)-sqr(gv1));
  assign(f,'65.out');
  rewrite(f);
  write(f,gv2:4:2);
  close(f);
end.
{Tinh canh ke 2 trong tam giac vuong}