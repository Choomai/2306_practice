uses crt;
var a:array[1..100] of real;
n,i:integer;
begin
  clrscr;
  write('Nhap n:');readln(n);
  for i:=1 to n do
  begin
    write('Nhap a[',i,']:');
    readln(a[i]);
  end;
  for i:=1 to n do
    if (sqr((trunc(sqrt(a[i]))))=a[i]) then writeln(a[i]:0:0,' la so chinh phuong')
      else writeln(a[i]:0:0,' khong phai la so chinh phuong');
end.
{Kiem tra so chinh phuong}