var f:text;
nt:array[1..100000] of longint;
i,j,n,cnt,cntnt,cntres:longint;
begin
  assign(f,'115.inp');
  reset(f);
  read(f,n);
  close(f);
  for i:=2 to n do
  begin
    cnt:=0;
    for j:=1 to i do if i mod j=0 then inc(cnt);
    if cnt=2 then
    begin
      inc(cntnt);
      nt[cntnt]:=i;
    end;
  end;
  assign(f,'115.out');
  rewrite(f);
  for i:=1 to cntnt do
  begin
    if nt[i+1]-nt[i]=2 then
    begin
      inc(cntres);
      writeln(f,cntres,': [',nt[i],',',nt[i+1],']');  
    end;
  end;
  close(f);
end.
{Nguyen to sinh doi}