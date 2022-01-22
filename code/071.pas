var f:text;
y:word;
chk:boolean;
begin
  assign(f,'071.inp');
  reset(f);
  read(f,y);
  close(f);
  assign(f,'071.out');
  rewrite(f);
  if (y mod 400=0) or ((y mod 100<>0) and (y mod 4=0)) then chk:=true else
    chk:=false;
  write(f,chk);
  close(f);
end.
{Kiem tra nam nhuan}