uses crt;
var a:array[1..100,1..100] of longint;
i,j,n,m:byte;
min:longint;
begin
  clrscr;
  write('Nhap hang:');readln(n);
  write('Nhap cot:');readln(m);
  for i:=1 to n do
    for j:=1 to m do
    begin
      write('Nhap a[',i,',',j,']:');
      readln(a[i,j]);
    end;
  for i:=1 to n do
    for j:=1 to m do writeln(a[i,j]);
  min:=a[1,1];
  for i:=1 to n do
    for j:=1 to m do
      if min>a[i,j] then min:=a[i,j];
  write('Phan tu nho nhat trong ma tran la ',min);
end.
{Tìm min trong mảng 2 chiều}