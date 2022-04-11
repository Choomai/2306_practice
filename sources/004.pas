uses crt;
var n,i:word;
begin
  clrscr;
  write('Nhap so:');readln(n);
  for i:=1 to n do
    if odd(i) then write(i,',');
end.
{In các số lẻ <=n}