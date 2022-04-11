uses crt;
var a:array[1..100,1..100] of longint;
b:array[1..100] of longint;
n,m,i,j:byte;
tam:longint;
begin
  clrscr;
  write('Nhap hang:');readln(n);
  write('Nhap cot:');readln(m);
  for i:=1 to n do
    for j:=1 to m do
    begin
      write('a[',i,',',j,']:');
      readln(a[i,j]);
    end;
  for i:=1 to n do
    for j:=1 to m do b[(i-1)*m+j]:=a[i,j];
  for i:=1 to n*m-1 do
    for j:=i+1 to n*m do
      if b[i]>b[j] then
      begin
      tam:=b[i];
      b[i]:=b[j];
      b[j]:=tam;
      end;
  for i:=1 to n do
    for j:=1 to m do a[i,j]:=b[(i-1)*m+j];
  for i:=1 to n do
  begin
    for j:=1 to m do
    write(a[i,j]:5);
    writeln;
  end;
end.
{Sắp xếp mảng 2 chiều}