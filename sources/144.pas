var i,n:longint;
s:double;
begin
  read(n);
  s:=1;
  for i:=2 to n do s:=s+1/i;
  write(s:4:2);
end.
{Bài 1, Đề thi cấp tỉnh Thừa Thiên Huế 21-22}