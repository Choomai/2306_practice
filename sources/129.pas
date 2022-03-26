var f:text;
revcp,cp:array[1..676] of string[2];
s:string;
i,j,k,n,res,cnt:integer;
begin
  assign(f,'129.inp');
  reset(f);
  readln(f,n,k);
  readln(f,s);
  for i:=1 to k do readln(f,cp[i]);
  close(f);
  for i:=1 to k do
    if cp[i][1]<>cp[i][2] then revcp[i]:=cp[i][2]+cp[i][1];
  for i:=1 to k do
    for j:=1 to n-1 do
    begin
      if (s[j]=cp[i][1]) and (s[j+1]=cp[i][2]) then inc(res);
      if (s[j]=revcp[i][1]) and (s[j+1]=revcp[i][2]) then inc(res);
    end;
  for i:=1 to k do
    if cp[i][1]=cp[i][2] then
    begin
      cnt:=0;
      for j:=1 to n do if s[j]=cp[i][1] then inc(cnt);
      if cnt=2 then inc(res);
    end;
  assign(f,'129.out');
  rewrite(f);
  write(f,res);
  close(f);
end.
{Chuoi ngoc}