uses crt;
var a:array[0..100,0..100] of longint;
n,i,j:word;
begin
clrscr;
write('Nhap n:');readln(n);
for i:=1 to n do a[i,0]:=1;
for i:=1 to n do
for j:=1 to n do
if i>j then a[i,j]:=a[i-1,j]
else a[i,j]:=a[i-1,j]+a[i,j-i];
write('Co ',a[n,n],' cach phan tich');
readln;
end.
