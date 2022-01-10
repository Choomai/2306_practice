var f:text;
d,m,y:integer;
begin
  assign(f,'70.inp');
  reset(f);
  read(f,m,y);
  close(f);
  if y mod 400<>0 then if m=2 then d:=28 else
    if (m=4) or (m=6) or (m=9) or (m=11) then d:=30 else d:=31
  else if m=2 then d:=29 else
    if (m=4) or (m=6) or (m=9) or (m=11) then d:=30 else d:=31;
  assign(f,'70.out');
  rewrite(f);
  write(f,d);
  close(f);
end.
{Kiem tra thang M co bao nhieu ngay}