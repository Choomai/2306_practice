uses crt;
var a,b:array[1..100,1..100] of longint;
tong,tongchan,tongle,tam:int64;
n,m,i,j:byte;
begin
clrscr;
write('Nhap hang:');readln(n);
write('Nhap cot:');readln(m);
for i:=1 to n do
 for j:=1 to m do
 begin
  write('a[',i,',',j,']:');
  readln(a[i,j]);
 end;{Nhap mang}
for i:=1 to n do tong:=tong+a[i,i];{Tinh tong duong cheo chinh}
writeln('Tong cac phan tu duong cheo chinh:',tong);
tong:=0;
for i:=1 to n do tong:=tong+a[i,n-1+i];{Tinh tong duong cheo phu}
write('Tong cac phan tu duong cheo phu:',tong);
tong:=0;
for i:=1 to n do
if i mod 2=0 then
for j:=1 to n do tongchan:=tongchan+a[i,j]{Tinh tong cac so chan trong 1 hang}
else for j:=1 to n do tongle:=tongle+a[i,j];{Tinh tong cac so le trong 1 hang}
writeln('Tong cac hang so chan:',tongchan);
writeln('Tong cac hang so le:',tongle);
for i:=1 to n do
 for j:=1 to m do
  b[j,i]:=a[i,j];{Ma tran chuyen vi}
tam:=n;n:=m;m:=tam;
for i:=1 to n do
begin
 for j:=1 to m do write(b[i,j]);
 writeln;
end;{Xuat mang}
readln;
end.