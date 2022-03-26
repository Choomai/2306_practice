uses crt;
var n,i:byte;
res,x:real;
begin
  clrscr;
  write('Nhap n:');readln(n);
  write('Nhap x:');readln(x);
  for i:=1 to n do res:=res+((x+sqrt(x)));
  write(res:4:2);
end.
{Tinh sqrt(x+sqrt(x+sqrt(x...sqrt(x))))}