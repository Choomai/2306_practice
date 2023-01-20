uses crt;
const pi=3.14;
var c,s:real;
begin
  write('Nhap canh vuong:');readln(c);
  s:=sqr(c*sqrt(2)/2)*pi;
  write('Dien tich hinh tron la ',s:4:2);
end.
{Tính diện tích hình tròn}