uses crt;
var x,s,tam:real;
n,i,j,tamgt:longint;
begin
  clrscr;
  write('Nhap x:');readln(x);
  write('Nhap n:');readln(n);
  s:=1+x;
  for i:=2 to n do
  begin
    tam:=x;
    tamgt:=1;
    for j:=2 to i do
    begin
      tam:=tam*x;
      tamgt:=tamgt*j;
    end;
    s:=s+tam/tamgt;
  end;
  write('Tong S=',s:4:2);
end.