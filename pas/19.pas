uses crt;
var a,b,c:array[1..3,1..3] of longint;
i,j:byte;
begin
clrscr;
for i:=1 to 3 do
 for j:=1 to 3 do
 begin
  write('Nhap a[',i,',',j,']:');
  readln(a[i,j]);
  write('Nhap b[',i,',',j,']:');
  readln(b[i,j]);
 end;{Nhap mang}
for i:=1 to 3 do
 for j:=1 to 3 do c[i,j]:=a[i,j]+b[i,j];{Tinh tong va luu vao mang c}
for i:=1 to 3 do
 for j:=1 to 3 do write(c[i,j],' ');{Xuat mang}
readln;
end.