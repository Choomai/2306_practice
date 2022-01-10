uses crt;
var a:string;
i,dem,vtd,vtc:byte;
begin
clrscr;
write('Nhap xau:');readln(a);
for i:=1 to length(a) do
if a[i]=' ' then
begin
 vtd:=i;
 vtc:=vtd+dem;
 dem:=0;
end
else inc(dem);
for i:=vtd to vtc+1 do write(a[i]);
readln;
end.
