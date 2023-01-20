var n,i,tmp,ttl:longint;
begin
  readln(n);
  tmp:=1;ttl:=1;
  for i:=2 to n do
  begin
    inc(tmp,3);
    inc(ttl,tmp);
  end;
  write(ttl);
end.
{Chia quà}