uses crt;
var dem,n,i:integer;
begin
clrscr;
write('Nhap so:');readln(n);
for i:=1 to n do
 if (n mod i=0) then inc(dem);
if dem=2 then write(n,' la so nguyen to')
 else write(n,' khong phai la so nguyen to');
readln;
end.
{Kiem tra so nguyen to}
