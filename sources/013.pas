uses crt;
var a:array[1..100] of real;
x:real;
c,n,i:integer;
begin
  clrscr;
  write('Nhap n:');readln(n);
  for i:=1 to n do
  begin
    write('Nhap a[',i,']:');
    readln(a[i]);
  end;
  write('Nhap x:');readln(x);
  c:=1;
  for i:=1 to n do
    if a[i]=x then inc(c);
end.
{Không xác định}