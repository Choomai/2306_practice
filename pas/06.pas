uses crt;
var a,b,c:word;
begin
clrscr;
for a:=1 to 9 do
 for b:=0 to 9 do
  for c:=0 to 9 do
   if (100*a+10*b+c)=(a*a*a+b*b*b+c*c*c) then write(a,b,c,',');
readln;
end.
{In cac so co 3 chu so = a.3+b.3+c.3}