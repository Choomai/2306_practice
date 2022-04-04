uses crt;
var a,aa,bb,s:array[1..10] of longint;
n,tong,ucln:longint;
i,j:byte;
begin
  clrscr;
  write('Nhap n(5<=n<=10):');readln(n);
  for i:=1 to n do
  begin
    write('Nhap a[',i,']:');
    readln(a[i]);
  end;
  for i:=1 to n do write(a[i],' ');
  for i:=1 to n-1 do
    begin
      aa[i]:=a[i];bb[i]:=a[i+1];
      while aa[i]<>bb[i] do
      if aa[i]>bb[i] then aa[i]:=aa[i]-bb[i] else bb[i]:=bb[i]-aa[i];
    end;
  writeln;
  for i:=1 to n do
    if ucln<aa[i] then ucln:=aa[i];
  for i:=1 to n do s[i]:=a[i];
    for i:=2 to n do
      for j:=1 to i-1 do a[i]:=s[i]*a[i];
  for i:=1 to n do tong:=tong+a[i];
  writeln('UCLN la ',ucln);
  write(tong);
end.
{Tinh UCLN, n1^1+n2^2+... trong mang}