var f:text;
nt:array[1..1000] of longint;
a:array[1..1000] of string;
n,i,j,k,tam,dem:longint;
begin
  assign(f,'052.inp');
  reset(f);
  read(f,n);
  close(f);
  for i:=1 to n do
  begin
    dem:=0;
    if tam=n then break;
    for j:=1 to i do if i mod j=0 then inc(dem);
    if dem=2 then
    begin
      inc(tam);
      nt[tam]:=i;
    end;
  end;
  assign(f,'052.out');
  rewrite(f);
  for k:=1 to n do val(a[k],i);
  for i:=1 to 4 do write(f,nt[i],' ');
  repeat
  begin
    inc(i);
    j:=1;
    if (a[i][1]='2') or (a[i][1]='3') or (a[i][1]='5') or (a[i][1]='7') then write(f,nt[j]) else inc(j);
    val(a[i],tam);
  end
  until tam<=n;
  close(f);
end.