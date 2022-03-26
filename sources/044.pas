var a,b:longint;
f:text;
begin
assign(f,'044.inp');
reset(f);
read(f,a,b);
close(f);
assign(f,'044.out');
rewrite(f);
write(f,a+b);
close(f);
end.
{Tinh tong a va b}