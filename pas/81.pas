var f:text;
a,b,c,delta,x1,x2:real;
begin
  assign(f,'81.inp');
  reset(f);
  read(f,a,b,c);
  close(f);
  assign(f,'81.out');
  rewrite(f);
  delta:=sqr(b)-4*a*c;
  if delta=0 then write(f,'PT co nghiem kep: ',-b/2*a:4:2) else
    if delta<0 then write(f,'PT vo nghiem');
  if delta>0 then
  begin
    x1:=(-b+sqrt(delta))/(2*a);
    x2:=(-b-sqrt(delta))/(2*a);
    write(f,'PT co 2 nghiem la: x1= ',x1:4:2,' va x2= ',x2:4:2);
  end;
  close(f);
end.
{PT bac 2}