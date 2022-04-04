uses crt;
var a:array[1..100] of integer;
n,i,b,c:integer;
begin
  clrscr;
  write('Nhap n:');readln(n);
  for i:=1 to n do
  begin
    write('Nhap a[',i,']:');
    readln(a[i]);
  end;
  write('Nhap gia tri muon tim kiem:');readln(b);
  c:=0;
  for i:=1 to n do
    if b=a[i] then
    begin
      write(b,' o vi tri a[',i,']');
      inc(c);
    end;
  if c=0 then write('Khong co gia tri ',b,' trong mang!');
end.
{Tim vi tri cua 1 so trong mang 1 chieu}