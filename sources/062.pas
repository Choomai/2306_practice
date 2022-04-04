var f:text;
tn,tam:ansistring;
n:int64;
i,j:longint;
begin
  assign(f,'062.inp');
  reset(f);
  read(f,n);
  close(f);
  repeat
  begin
    inc(i);
    str(i,tam);
    for j:=1 to length(tam) do if i<>n then inc(i) else break;
  end
  until i=n;
  assign(f,'062.out');
  rewrite(f);
  write(f,copy(tam,j,1));
  close(f);
end.