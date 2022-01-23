var f:text;
a:array[1..99] of string;
suba:array[1..10000] of string;
i,j,k,t,op,cl:byte;
chk:array[1..99] of boolean;
begin
  assign(f,'093.inp');
  reset(f);
  readln(f,t);
  for i:=1 to t do readln(f,a[i]);
  close(f);
  for i:=1 to t do
  begin
    op:=0;cl:=0;
    for j:=1 to length(a[i]) do
    begin
      if a[i][j]='(' then inc(op);
      if a[i][j]=')' then inc(cl);
    end;
    if op=cl then chk[i]:=true;
  end;
  for i:=1 to t do
    repeat
    begin
      op:=0;cl:=0;
      inc(j);
      if a[i][j]=' ' then suba[i]:=copy(a[i],j-j+1,j);
      for k:=1 to length(suba[i]) do
      begin
        if suba[i][k]='(' then inc(op);
        if suba[i][k]=')' then inc(cl);
      end;
      if op<>cl then
      begin
        chk[i]:=false;
        break;
      end;
    end
    until j=length(a[i]);
  assign(f,'093.out');
  rewrite(f);
  for i:=1 to t do if chk[i]=true then writeln(f,'YES') else writeln(f,'NO');
  close(f);
end.
{Kiem tra ngoac don}