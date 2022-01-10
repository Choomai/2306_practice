uses crt;
var a:array[1..100] of integer;
n,i,j,dem:byte;
begin
clrscr;
write('Nhap n:');readln(n);
for i:=1 to n do
begin
 write('Nhap a[',i,']:');
 readln(a[i]);
end;
for i:=1 to n do
begin
 dem:=0;
 for j:=1 to n do
 if i=j then continue else
 if a[i]<>a[j] then inc(dem);
 if dem=n-1 then write(a[i],' ');
end;
end.
{Liet ke so xuat hien 1 lan trong mang}