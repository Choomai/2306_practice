uses crt;
var a:array[1..100] of integer;
n,i,k:integer;
begin
  clrscr;
  write('Nhap n:');readln(n);
  for i:=1 to n do
  begin
    write('Nhap a[',i,']:');
    readln(a[i]);
  end;
  write('Nhap vi tri can xoa:');readln(k);
  for i:=k to n-1 do a[i]:=a[i+1];
  dec(n);
  for i:=1 to n do write(a[i],',');
end.
{Xoa 1 so trong mang 1 chieu}