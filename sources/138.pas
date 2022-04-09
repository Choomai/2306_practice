var i,m,ttl:longint;
begin
  read(m);
  while m<=10000 do
  begin
    ttl:=1;
    for i:=2 to m-1 do if m mod i=0 then inc(ttl,i);
    if ttl>m then
    begin
      write(m);
      break;
    end;
    inc(m);
  end;
end.
{So du thua https://youtu.be/WUCclZvXRuQ}