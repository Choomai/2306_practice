uses crt;
var a:string;
i,dem:byte;
begin
clrscr;
write('Nhap xau:');readln(a);
for i:=1 to length(a) do
if a[i] in ['0'..'9'] then inc(dem);
write('Ky tu chu so xuat hien trong xau ',dem,' lan');
readln;
end.
