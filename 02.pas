uses crt;
var n,i:integer;
gt:longint;
begin
clrscr;
write('Nhap so:');readln(n);
gt:=1;
for i:=1 to n do
 gt:=gt*i;
write('Giai thua cua ',n,' la ',gt);
readln;
end.
{Tinh giai thua cua n}