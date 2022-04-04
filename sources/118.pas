var f:text;
n,i:longint;
a:array[1..1000000] of longint;
begin
  assign(f,'118.inp');
  reset(f);
  readln(f,n);
  for i:=1 to n do read(f,a[i]);
  close(f);
  assign(f,'118.out');
  rewrite(f);
  a[2]:=a[2]+a[1];
  for i:=3 to n do
  begin
    a[i]:=a[i]+a[i-1];
  end;
  for i:=1 to n do write(f,a[i],' ');
  close(f);
end.
{Noi nhanh https://youtu.be/AQshvrC3tfw}