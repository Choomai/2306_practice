var f:text;
a:array[1..100000] of word;
i,n,m,tmp,res,mtmp:longint;
begin
  assign(f,'125.inp');
  reset(f);
  readln(f,n,m);
  for i:=1 to n do read(f,a[i]);
  close(f);
  for i:=1 to n do
  begin
    tmp:=a[i];
    inc(mtmp,tmp);
    if mtmp>m then
      begin
        inc(res);
        if (a[n]+mtmp>m) and (i=n) then inc(res);
        mtmp:=a[i];
      end;
  end;
  assign(f,'125.out');
  rewrite(f);
  if res=0 then inc(res);
  write(f,res);
  close(f);
end.
{Xep hang hoa sao cho so lan di xe la it nhat}