var f:text;
t1,t2,rate,tmpt1,tmpt2,tmprate:longint;
a:array[1..1000] of integer;
i,j,n,stp:integer;
begin
  assign(f,'143.inp');reset(f);
  repeat
  begin
    inc(n);
    read(f,a[n]);
  end
  until eof(f);
  close(f);
  rate:=maxlongint;
  for i:=n-1 downto 1 do
  begin
    tmpt1:=0;tmpt2:=0;
    for j:=1 to i do inc(tmpt1,a[j]);
    for j:=n downto i+1 do inc(tmpt2,a[j]);
    if tmpt1>tmpt2 then tmprate:=tmpt1-tmpt2 else tmprate:=tmpt2-tmpt1;
    if rate>tmprate then
    begin
      rate:=tmprate;
      stp:=i;
      t1:=tmpt1;t2:=tmpt2;
    end;
  end;
  assign(f,'143.out');rewrite(f);
  writeln(f,t1,' ',t2,' ',rate);
  for i:=1 to stp do write(f,a[i],' ');
  writeln(f);
  for i:=n downto stp+1 do write(f,a[i],' ');
  close(f);
end.
{Chia gói kẹo ra 2 sao cho chênh lệch 2 bên là min}