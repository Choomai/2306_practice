var f:text;
n:array[1..100] of longint;
i,j,k,rep,tmp:longint;
cnt:array[1..100] of byte;
begin
  assign(f,'104.inp');
  reset(f);
  while eof(f)=false do
  begin
    inc(rep);
    read(f,n[rep]);
  end;
  close(f);
  for i:=1 to rep do
  begin
    tmp:=0;
    for j:=1 to n[i] div 2 do
    begin
      if n[i]<3 then
      begin
        inc(cnt[i]);
        continue;
      end;
      tmp:=0;
      k:=j;
      repeat
      begin
        if tmp+k>n[i] then break;
        inc(tmp,k);
        inc(k);
      end
      until tmp=n[i];
      if tmp=n[i] then inc(cnt[i]);
    end;
  end;
  assign(f,'104.out');
  rewrite(f);
  for i:=1 to rep do writeln(f,cnt[i]);
  close(f);
end.
{CountCBG count N}