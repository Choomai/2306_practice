var f:text;
m1,m2,m3,n1,n2,t1,t2,t3:real;
i,k1,k2,k3:byte;
begin
  assign(f,'90.inp');
  reset(f);
  readln(f,t1,n1,k1);
  readln(f,t2,n2,m2);
  read(f,t3,m3,k3);
  close(f);
  m1:=n1+(t1/100*n1);
  if k1>1 then for i:=2 to k1 do m1:=m1+(t1/100*m1);
  while n2<m2 do
  begin
    n2:=n2+(t2/100*n2);
    inc(k2);
  end;
  t3:=t3/100+1;
  for i:=1 to k3 do
  begin
    m3:=m3/t3;
  end;
  assign(f,'90.out');
  rewrite(f);
  writeln(f,m1:4:2);
  writeln(f,k2);
  write(f,m3:4:2);
  close(f);
end.
{Tinh lai suat ngan hang}