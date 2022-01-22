var a:array[1..100] of longint;
i:byte;
f:text;
begin
assign(f,'045.inp');
reset(f);
for i:=1 to 100 do read(f,a[i]);
close(f);
assign(f,'045.out');
rewrite(f);
for i:=100 downto 1 do
if a[i]<>0 then write(f,a[i],' ');
close(f);
end.
{In tu cuoi mang toi dau mang}