var f:text;
h,m,s:longint;
begin
  assign(f,'072.inp');
  reset(f);
  read(f,h,m,s);
  close(f);
  inc(s);
  if s=60 then
  begin
    inc(m);
    s:=0;
  end;
  if m=60 then 
  begin
    inc(h);
    m:=0;
  end;
  if h=24 then h:=1;
  assign(f,'072.out');
  rewrite(f);
  write(f,h,' ',m,' ',s);
  close(f);
end.
{Dong ho CLOCK}