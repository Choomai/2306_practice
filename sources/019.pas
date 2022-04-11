uses crt;
var a,b,c:array[1..3,1..3] of longint;
i,j:byte;
begin
  clrscr;
  for i:=1 to 3 do
    for j:=1 to 3 do
    begin
      write('Nhap a[',i,',',j,']:');
      readln(a[i,j]);
      write('Nhap b[',i,',',j,']:');
      readln(b[i,j]);
    end;
  for i:=1 to 3 do
    for j:=1 to 3 do c[i,j]:=a[i,j]+b[i,j];
  for i:=1 to 3 do
    for j:=1 to 3 do write(c[i,j],' ');
end.
{Tính tổng mảng 2 chiều a,b}