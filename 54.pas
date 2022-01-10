uses crt;
var a:array[1..100] of longint;
n,max:longint;
i,dem:byte;
label 1,2;
begin
clrscr;
write('Nhap n:');readln(n);
for i:=1 to n do
begin
 write('Nhap a[',i,']:');
 readln(a[i]);
end;
max:=a[1];
for i:=2 to n do
if a[i]>max then max:=a[i];
writeln('So lon nhat la:',max);
write('Cac phan tu chinh phuong:');
for i:=1 to n do
if a[i]>0 then
if sqr(round(sqrt(a[i])))=a[i] then write(a[i],' ');
writeln;
for i:=2 to n do
if ((a[i-1]<0) and (a[i+1]<0)) or ((a[i-1]>=0) and (a[i+1]>=0)) then
begin
 write('Day dan dau');
 goto 2;
end
else goto 1;
1:write('Day khong dan dau');
2:readln;
end.