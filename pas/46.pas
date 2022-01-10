var a,b:array[1..100000] of longint;
x,kq:longint;
n,i:byte;
f:text;
begin
assign(f,'46.inp');
reset(f);
readln(f,n);
for i:=1 to n do readln(f,a[i]);
close(f);
assign(f,'46.out');
rewrite(f);
kq:=-100001;
i:=1;
repeat
begin
 x:=a[i];
 inc(i);
end
until x<0;
for i:=1 to n do
begin
 if x<0 then
 if x>kq then kq:=x;
end;
write(f,x);
close(f);
end.
{Tim so am lon nhat trong day}