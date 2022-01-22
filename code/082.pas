var f:text;
a:array[1..99] of real;
tb,gt,tamgt:real;
n:integer;
i,vt:byte; 
begin
  assign(f,'082.inp');
  reset(f);
  read(f,n);
  for i:=1 to n do read(f,a[i]);
  close(f);
  for i:=1 to n do tb:=tb+a[i];
  tb:=tb/n;
  gt:=1000000000;
  for i:=1 to n do
  begin
    tamgt:=a[i]-tb;
    if tamgt<0 then tamgt:=tamgt*-1;
    if gt>tamgt then
    begin
      gt:=tamgt;
      vt:=i;
    end;
  end;
  gt:=a[vt];
  assign(f,'082.out');
  rewrite(f);
  write(f,tb:4:2,' ',gt:4:2,' ',vt);
  close(f);
end.
{Tinh gt tb, tim gt gan tb nhat va vt cua no trong day}