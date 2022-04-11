uses crt;
var a:array[1..100] of integer;
n,i,min,vt:integer;
begin
  clrscr;
  write('Nhap n:');readln(n);
  for i:=1 to n do
  begin
    write('Nhap a[',i,']:');
    readln(a[i]);
  end;
  min:=a[i];
  for i:=2 to n do
    if min>a[i] then
    begin
      min:=a[i];
      vt:=a[i];
    end;
  a[vt]:=a[1];
  a[1]:=min;
  write(a[1]);
  for i:=2 to n do write(',',a[i]);
end.
{Không xác định}