uses crt;
var a:array[1..100] of integer;
n,i,dd,maxdd,vt,maxvt:integer;
begin
clrscr;
write('Nhap n:');readln(n);
for i:=1 to n do
begin
 write('Nhap a[',i,']:');
 readln(a[i]);
end;
i:=1;maxdd:=0;maxvt:=0;
while i<=n do
begin
 dd:=1;vt:=i;
 while(a[i]<=a[i+1]) and (i<=n) do
 begin
  inc(dd);
  inc(i);
 end;
 if dd>maxdd then
 begin
  maxdd:=dd;
  maxvt:=vt;
 end;
 inc(i);
end;
write('Day co do dai lon nhat ');
for i:=maxvt to maxvt+maxdd-1 do write(a[i],' ');
readln;
end.
{In day co do dai lon nhat trong mang}