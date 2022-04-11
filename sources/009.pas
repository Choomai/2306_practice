uses crt;
var a:array[1..15] of real;
n,i,j:integer;
tam,tong,tb,max,min:real;
begin
  clrscr;
  write('Nhap n:');readln(n);
  for i:=1 to n do
  begin
    write('Nhap a[',i,']:');
    readln(a[i]);
  end;
  for i:=1 to n do tong:=tong+a[i];
  tb:=tong/n;
  max:=a[1];min:=a[1];
  for i:=2 to n do
  begin
    if min>a[i] then min:=a[i];
    if max<a[i] then max:=a[i];
  end;
  for i:=1 to n-1 do
    for j:=1+1 to n do
      if a[i]<a[j] then
      begin
        tam:=a[i];
        a[i]:=a[j];
        a[j]:=tam;
      end;
  writeln('Tong:',tong:4:2);
  writeln('Trung binh cong:',tb:4:2);
  writeln('Gia tri lon nhat:',max:4:2);
  writeln('Gia tri nho nhat:',min:4:2);
  write(a[1]:4:2);
  for i:=2 to n do write(',',a[i]:4:2);
end.
{Tính SUM, AVG, MIN, MAX trong mảng 1 chiều}