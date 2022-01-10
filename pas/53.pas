uses crt;
var a:string;
n,dem:longint;
i:byte;
begin
clrscr;
write('Nhap n:');readln(n);
str(n,a);
for i:=1 to length(a) do
if a[i]='8' then inc(dem,2)
else if (a[i]='0') or (a[i]='4') or (a[i]='6') or (a[i]='9') then inc(dem);
write('So lo hong la:',dem);
readln;
end.
