uses crt;
var a,b:array[1..10000] of integer;
i,j,n,m,tmp:integer;
begin
  clrscr;
  write('Nhap n:');readln(n);
  for i:=1 to n do
  begin
    write('Nhap a[',i,']:');
    readln(a[i]);
  end;
  write('Nhap m:');readln(m);
  for i:=1 to n do b[i]:=a[i];
  for i:=1 to n do
    for j:=1 to n do
      if a[i]>a[j] then
      begin
        tmp:=a[i];
        a[i]:=a[j];
        a[j]:=tmp;
      end;
  i:=1;
  writeln('Gia tri can tim la: ',a[m]);
  while a[m]<>b[i] do inc(i);
  write('Vi tri nam trong day la: ',i);
end.
{Tìm số lớn thứ M và vị trí của nó trong dãy}