var f:text;
n,uc:array[1..100] of word;
ucln:word;
i,maxn:byte;
begin
  assign(f,'057.inp');
  reset(f);
  for i:=1 to 100 do read(f,n[i]);
  close(f);
  for i:=1 to 100 do if n[i]>0 then inc(maxn) else break;
  for i:=1 to maxn-1 do
  begin
    while n[i]<>n[i+1] do
      if n[i]>n[i+1] then n[i]:=n[i]-n[i+1]
        else n[i+1]:=n[i+1]-n[i];
    ucln:=n[i];
  end;
  assign(f,'057.out');
  rewrite(f);
  write(f,ucln);
  close(f);
end.
{Tinh UCLN trong day so}