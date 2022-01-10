uses crt;
var a:string;
i:byte;
begin
clrscr;
write('Nhap xau:');readln(a);
a:=' '+a+' ';
for i:=1 to length(a) do
if a[i]=' ' then
begin
 a[i+1]:=(upcase(a[i]));
 write(a[i]);
end;
else write(a[i]);
readln;
end.
{In hoa chu cai dau tien cua moi tu}
