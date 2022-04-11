var a,b,c:word;
begin
  for a:=1 to 9 do
    for b:=0 to 9 do
      for c:=0 to 9 do
        if (100*a+10*b+c)=(a*a*a+b*b*b+c*c*c) then write(a,b,c,',');
end.
{In các số có 3 chữ số = a.3+b.3+c.3}