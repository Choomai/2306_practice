uses crt;
var n,i:longint;
begin
  clrscr;
  write('Nhap n:');readln(n);
  write(n,'=');
  i:=2;
  repeat
  begin
    while n mod i<>0 do inc(i);
    write(i);
    n:=n div i;
    if n>1 then write('*');
  end
  until n=1;
  readln;
end.
{Phan tich thua so nguyen to}