uses crt;
var a,b,x,sabcd,smcn,maxsamn:real;
begin
  clrscr;
  write('Nhap a:');readln(a);
  write('Nhap b:');readln(b);
  write('Nhap x:');readln(x);
  sabcd:=a*b;
  smcn:=round((1/2)*x*(b-x));
  maxsamn:=round((1/2)*a*b);
  writeln(sabcd:4:1);writeln(smcn:4:1);writeln(maxsamn:4:1);
end.
{Tinh S(ABCD), S(MCN), S(AMN) lon nhat khi M,N thay doi}