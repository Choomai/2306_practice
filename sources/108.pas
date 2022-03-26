var f:text;
cmd:array[1..3000] of string[1];
stp:array[1..3000] of longint;
d,n,i,tl:longint;
begin
  assign(f,'108.inp');
  reset(f);
  readln(f,n,d);
  for i:=1 to n do 
  begin
    readln(f,cmd[i],stp[i]);
    inc(tl,stp[i]*d);
  end;
  close(f);
  assign(f,'108.out');
  rewrite(f);
  write(f,tl);
  close(f); 
end.
{Tinh do dai da di duoc, biet 1 buoc di = d(cm)}