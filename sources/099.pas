var f:text;
r:array[1..100] of real;
min:real;
n,i:byte;
begin
  assign(f,'099.inp');
  reset(f);
  read(f,n);
  for i:=1 to n do read(f,r[i]);
  close(f);
  min:=r[1];
  for i:=1 to n do if min>r[i] then min:=r[i];
  assign(f,'099.out');
  rewrite(f);
  write(f,sqr(min)*3.14:4:2);
  close(f);
end.
{Tính diện tích giao nhau lớn nhất của n đường tròn}