const p1=80;
p2=50;
p3=30;
var f:text;
n,all:longint;
begin
  assign(f,'069.inp');
  reset(f);
  read(f,n);
  close(f);
  if n>60 then if n>120 then
  begin
    all:=60*p1;
    n:=n-60;
    all:=all+60*p2;
    n:=n-60;
    all:=all+n*p3;
  end else
    begin
      all:=60*p1;
      n:=n-60;
      all:=all+n*p2;
    end else all:=n*p1;
  assign(f,'069.out');
  rewrite(f);
  write(f,all);
  close(f);
end.
{Tinh tien Internet}