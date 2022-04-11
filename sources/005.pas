var a,b,baka,bakb:integer;
begin
  write('Nhap a:');readln(a);
  baka:=a;
  write('Nhap b:');readln(b);
  bakb:=b;
  while a<>b do if a>b then a:=a-b else b:=b-a;
  writeln('UCLN=',a);
  write('BCNN=',(baka*bakb)/a:0:0);
end.
{Tìm ƯCLN,BCNN của 2 số}