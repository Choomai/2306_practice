uses crt;
var a,b:string;
i:byte;
begin
clrscr;
write('Nhap xau:');readln(a);
a:=' '+a;
for i:=length(a) downto 1 do
if a[i]=' ' then
begin
 write(copy(a,i+1,length(a)-i),' ');
 delete(a,i,length(a)-i+1);
end;
readln;
end.
