uses crt;
var n:integer;
f1,f2,f:longint;
begin
clrscr;
f1:=1;f2:=1;
write('Nhap so:');readln(n);
write(f1,',',f2,',');
repeat begin
 f:=f1+f2;
 if f<n then write(f,',');
 f2:=f1;f1:=f;
end;
until f>n;
readln;
end.
{In day Fibonacci <=n}