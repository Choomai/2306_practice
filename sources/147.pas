var f:text;
k:longint;
a:array[1..1000] of integer;
i,j,n,res,tmp:integer;
label prt;
begin
  assign(f,'147.inp');reset(f);
  readln(f,n,k);
  for i:=1 to n do read(f,a[i]);
  close(f);
  for i:=1 to n do
    for j:=1 to n do
      if a[i]<a[j] then
      begin
        tmp:=a[i];
        a[i]:=a[j];
        a[j]:=tmp;
      end;
  res:=k div a[n];k:=k mod a[n];
  for i:=n-1 downto 1 do 
    if (k<=a[i]) and (k>0) then
    begin
      inc(res);
      k:=0;
    end;
  for i:=1 to n-1 do
    for j:=i+1 to n-1 do
      if (a[i]+a[j]=k) and (k>0) then
      begin
        inc(res,2);
        goto prt;
      end;
  prt:write(res);
end.
{Bài 4, Đề thi cấp tỉnh Thừa Thiên Huế 21-22}