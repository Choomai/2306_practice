var fio:text;
f1,f2,f:longint;
n,m,i:byte;
begin
  assign(fio,'04.inp');
  reset(fio);
  readln(fio,m);
  close(fio);
  assign(fio,'084.out');
  rewrite(fio);
  f1:=1;f2:=1;
  for i:=3 to m do
  begin
    f:=f1+f2;
    f2:=f1;f1:=f;
  end;
  writeln(fio,f);
  f1:=1;f2:=1;
  for i:=3 to m do
  begin
    f:=f1+f2;
    write(fio,f,' ');
    f2:=f1;f1:=f;
  end;
  close(fio);
end.
{In day Fibonacci <=n}