uses crt;
var a,b,aa:integer;
begin
clrscr;
write('Nhap a:');readln(a);
write('Nhap b:');readln(b);
while a<>b do
 if a>b then a:=a-b
 else b:=b-a;
writeln('UCLN=',a);
readln;
end.
{Tim UCLN cua 2 so}