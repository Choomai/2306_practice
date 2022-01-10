uses crt;
var a,b,aa,bb:longint;
i:byte;
begin
clrscr;
write('Nhap a:');readln(a);
write('Nhap b:');readln(b);
aa:=a;bb:=b;
while aa<>bb do
if aa>bb then aa:=aa-bb else bb:=bb-aa;
write('UCLN cua ',a,' va ',b,' la ',aa);
readln;
end.
{Tinh UCLN cua 2 so}
