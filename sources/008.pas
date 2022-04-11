uses crt;
var a:array[1..100] of integer;
n,i,k,so:integer;
begin
  clrscr;
  write('Nhap n:');readln(n);
  for i:=1 to n do
  begin
    write('Nhap a[',i,']:');
    readln(a[i]);
  end;
  write('Nhap so can chen:');readln(so);
  write('Nhap vi tri can chen:');readln(k);
  for i:=n+1 downto k+1 do a[i]:=a[i-1];
  a[k]:=so;
  inc(n);
  write(a[1]);
  for i:=2 to n do write(',',a[i]);
end.
{Chèn số vào mảng 1 chiều}