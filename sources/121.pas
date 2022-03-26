var f:text;
i,j,n,k,tmp1,tmp2,revtmp:longint;
ttl:array[1..1000] of word;
begin
  assign(f,'121.inp');
  reset(f);
  read(f,n,k);
  for i:=1 to n do
  begin
    readln(f,tmp1,tmp2);
    ttl[i]:=tmp1+tmp2;
  end;
  close(f);
  for i:=1 to n do
    for j:=1 to n do
      if ttl[i]>ttl[j] then
      begin
        revtmp:=ttl[j];
        ttl[j]:=ttl[i];
        ttl[i]:=revtmp;
      end;
  for i:=1 to k do write(ttl[i],' ');
end.
{Chon ra k nguoi co tong IQ va AQ lon nhat}