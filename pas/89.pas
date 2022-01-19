var f:text;
a,b:string;
i,j,k,l,dem:longint;
begin
  assign(f,'89.inp');
  reset(f);
  read(f,i,j);
  close(f);
  assign(f,'89.out');
  rewrite(f);
  for k:=i to j do
  begin
    b:='';
    str(k,a);
    for l:=length(a) downto 1 do b:=b+a[l];
    if a=b then 
    begin
      writeln(f,a);
      inc(dem);
    end;
  end;
  if dem>0 then write(f,'CO TAT CA ',dem,' SO') else write(f,'KHONG CO SO NAO');
  close(f);
end.
{Tim so doi xung tu i toi j}