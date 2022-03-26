var f:text;
a,b,g:array[1..100] of longint;
i,j,n,tam:byte;
begin
  assign(f,'100.inp');
  reset(f);
  repeat 
  begin
    inc(i);
    read(f,a[i]);
  end
  until eoln(f);
  n:=i;
  for i:=1 to n do read(f,b[i]);
  for i:=1 to n do
    for j:=1 to n do
      if a[i]=b[j] then
      begin
        inc(tam);
        g[tam]:=a[i];
      end;
  assign(f,'100.out');
  rewrite(f);
  write(f,'Tap hop A: ');
  for i:=1 to n do write(f,a[i],' ');
  writeln(f);
  write(f,'Tap hop B: ');
  for i:=1 to n do write(f,b[i],' ');
  writeln(f);
  write(f,'Giao cua 2 tap hop: ');
  for i:=1 to tam do write(f,g[i],' ');
  close(f);
  for i:=1 to 5 do writeln(a[i],' ',b[i]);
end.
{In ra tap hop A va B va giao cua chung}