var a:array[1..100] of string;
gia:array[1..100] of longint;
i,j,k:byte;
sl,tong,min,max:longint;
f:text;
begin
assign(f,'048.inp');
reset(f);
i:=1;
repeat
begin
 readln(f,a[i]);
 inc(i);
end
until eof(f);
close(f);
for i:=1 to 100 do
if a[i]<>'' then inc(sl);
for i:=1 to sl do
begin
 val(copy(a[i],7,3),gia[i]);
 tong:=tong+gia[i];
end;
max:=gia[1];
min:=gia[1];
for i:=1 to sl do
begin
 if max<gia[i] then max:=gia[i];
 if min>gia[i] then min:=gia[i];
end;
assign(f,'048.out');
rewrite(f);
writeln(f,'So luong cac mat hang:',sl);
writeln(f,'Tong don hang:',tong);
writeln(f,'Hang co so tien lon nhat:',max);
writeln(f,'Hang co so tien nho nhat:',min);
close(f);
end.
