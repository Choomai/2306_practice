uses crt;
var a:array[1..100,1..100] of longint;
n,m,dem,i,j:byte;
x,max,min:longint;
begin
clrscr;
write('Nhap hang:');readln(n);
write('Nhap cot:');readln(m);
for i:=1 to n do
 for j:=1 to m do
 begin
  write('a[',i,',',j,']:');
  readln(a[i,j]);
 end;
min:=a[1,1];max:=a[1,1];
for i:=1 to n do
 for j:=1 to m do
 begin
  if max<a[i,j] then max:=a[i,j];
  if min>a[i,j] then min:=a[i,j];
 end;
writeln('Gia tri lon nhat trong mang la:',max);
writeln('Gia tri nho nhat trong mang la:',min);
write('Nhap x:');readln(x);
for i:=1 to n do
 for j:=1 to m do
 if x=a[i,j] then inc(dem);
if dem=0 then writeln('Khong co gia tri nao trong mang bang ',x,'!')
else writeln(x,' xuat hien ',dem,' lan');
for i:=1 to n do
 begin
  for j:=1 to m do
  write(a[i,j]:5);
  writeln;
 end;
readln;
end.
{Tim gia tri nho nhat, lon nhat trong mang 2 chieu}