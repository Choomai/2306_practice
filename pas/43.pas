uses crt;
var z:array[1..100] of longint;
n,a,b,i,j,dem,tam:longint;
label 1;
begin
clrscr;
write('Nhap n:');readln(n);
tam:=1;
for j:=2 to 100 do
begin
 dem:=0;
 for i:=1 to j do
 if (j mod i=0) then inc(dem);
 if dem=2 then
 begin
  z[tam]:=j;
  inc(tam);
 end;
end;
a:=z[1];
for i:=1 to n do
begin
 a:=z[i];
 for j:=1 to 50 do
 begin
  b:=z[j];
  if a+b=n then goto 1;
 end;
end;
1:write(a,'+',b,'=',n);
readln;
end.