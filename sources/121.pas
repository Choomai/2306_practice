var f:text;
i,j,n,m,max,tmp,tmpnum,cntmlt:longint;
a,b,mlt:array[1..10000000] of 0..3000000;
begin
  assign(f,'121.inp');
  reset(f);
  readln(f,n,m);
  for i:=1 to n do read(f,a[i]);
  readln(f);
  for i:=1 to m do read(f,b[i]);
  close(f);
  for i:=1 to n do
    for j:=1 to m do if a[i]=b[j] then a[i]:=0;
  for i:=1 to n do
    for j:=1 to n do
      if a[i]>a[j] then
      begin
        tmp:=a[i];
        a[i]:=a[j];
        a[j]:=tmp;
      end;
  for i:=n downto 1 do if a[i]=0 then dec(n);
  tmpnum:=a[1];cntmlt:=1;
  for i:=1 to n do
  begin
    if tmpnum=a[i] then inc(mlt[cntmlt],a[i]) else
    begin
      tmpnum:=a[i];
      inc(cntmlt);
      mlt[cntmlt]:=a[i];
    end;
  end;
  for i:=1 to cntmlt do if max<mlt[i] then max:=mlt[i];
  assign(f,'121.out');
  rewrite(f);
  for i:=1 to n do write(f,a[i],' ');
  writeln(f);
  write(f,max);
  close(f);
end.
{Quay thuong https://youtu.be/AQshvrC3tfw}