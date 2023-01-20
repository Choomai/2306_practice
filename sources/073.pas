var f:text;
n,tien:real;
begin
  assign(f,'073.inp');
  reset(f);
  read(f,n);
  close(f);
  if n=1 then tien:=5000;
  if (n>=2) and (n<=5) then
  begin
    tien:=5000;
    n:=n-1;
    tien:=tien+n*4500;
  end;
  if n>=6 then
  begin
    tien:=5000;
    n:=n-1;
    tien:=tien+4500*4;
    n:=n-4;
    if n+5<=120 then tien:=tien+n*3500 else
      tien:=(tien+n*3500)*0.9;
  end;
  assign(f,'073.out');
  rewrite(f);
  write(f,tien:0:0);
  close(f);
end.
{Tính tiền TAXI}