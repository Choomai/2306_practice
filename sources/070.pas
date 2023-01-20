var f:text;
d,m,y:integer;
isFeb: boolean;
begin
  assign(f,'070.inp');
  reset(f);
  read(f,m,y);
  close(f);
  if m=2 then isFeb:=true else isFeb:=false
  if y mod 400<>0 then if isFeb then d:=28 else
    if (m=4) or (m=6) or (m=9) or (m=11) then d:=30 else d:=31
  else if isFeb then d:=29 else
    if (m=4) or (m=6) or (m=9) or (m=11) then d:=30 else d:=31;
  assign(f,'070.out');
  rewrite(f);
  write(f,d);
  close(f);
end.
{Kiểm tra tháng M có bao nhiêu ngày}