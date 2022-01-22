uses crt;
var n,m,max:longint;
begin
clrscr;
write('Nhap tu:');readln(n);
write('Nhap mau:');readln(m);
if n>m then max:=n else max:=m;
for i:=max downto 1 do
if (n mod i=0) and (m mod i=0) then
begin
 n:=n div i;
 m:=m div i;
end;
if m=1 then write(n) else
write(n,'/',m);
readln;
end.
{Rut gon phan so}