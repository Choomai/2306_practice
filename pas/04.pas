uses crt;
var n,i:word;
begin
clrscr;
write('Nhap so:');readln(n);
for i:=1 to n do
if odd(i) then write(i,',');
readln;
end.
{In cac so le <=n}