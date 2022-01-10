uses crt;
var a:array[1..2,1..3] of longint;
i,j,dem,vtx,vtz:byte;
x:longint;
begin
clrscr;
for i:=1 to 2 do
 for j:=1 to 3 do
 begin
  write('Nhap a[',i,',',j,']:');
  readln(a[i,j]);
 end;
write('Nhap x:');readln(x);
write(x,' xuat hien o vi tri ');
for i:=1 to 2 do
 for j:=1 to 3 do
 if a[i,j]=x then
 begin
  inc(dem);
  vtx:=i;
  vtz:=j;
  write(vtx,',',vtz,' ');
 end;
writeln;
write(x,' xuat hien ',dem,' lan trong mang a');
readln;
end.
