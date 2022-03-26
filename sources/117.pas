var f:text;
a,b:array[1..70] of longint;
ttlc:array[1..35] of longint;
i,n,rep,ttla,ttlb:longint;
chkttlc:boolean;
label nxt;
begin
  assign(f,'117.inp');
  reset(f);
  read(f,n);
  close(f);
  repeat
  begin
    inc(rep);
    ttla:=0;ttlb:=0;
    for i:=1 to n do 
    begin
      a[i]:=random(2*n);
      b[i]:=random(2*n);
      if a[i]=0 then a[i]:=random(2*n);
      if b[i]=0 then b[i]:=random(2*n);
    end;
    for i:=1 to n do
    begin
      ttla:=ttla+a[i];
      ttlb:=ttlb+b[i];
      ttlc[i]:=a[i]+b[i];
    end;
    for i:=2 to n do if ttlc[i]=ttlc[1] then chkttlc:=true else goto nxt;
    continue;
    nxt:chkttlc:=false;
  end
  until ((ttla=ttlb) and (chkttlc=true)) or (rep=1000000);
  assign(f,'117.out');
  rewrite(f);
  if rep=1000000 then write(f,'No solution') else
  begin
    for i:=1 to n do write(f,a[i],' ');
    writeln(f);
    for i:=1 to n do write(f,b[i],' ');
    writeln(f);
    write(f,ttla);
  end;
  close(f);
end.
{Sap xep so (thi cap tinh 2020-2021)}