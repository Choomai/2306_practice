var f:text;
y:word;
check:boolean;
begin
  assign(f,'71.inp');
  reset(f);
  read(f,y);
  close(f);
  assign(f,'71.out');
  rewrite(f);
  if (y mod 400=0) or ((y mod 100<>0) and (y mod 4=0)) then check:=true else
    check:=false;
  write(f,check);
  close(f);
end.
{Kiem tra nam nhuan}