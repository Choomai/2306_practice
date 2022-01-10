uses crt;
var a:string;
i:byte;
begin
clrscr;
write('Nhap xau:');readln(a);
for i:=1 to length(a) do a[i]:=lowercase(a[i]);
write(a);
readln;
end.
