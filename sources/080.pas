var f:text;
gt:array[4..20] of int64;
n,tong:int64;
i,j:longint;
begin
  assign(f,'080.inp');
  reset(f);
  read(f,n);
  close(f);
  for i:=4 to 20 do
  begin
    gt[i]:=i;
    for j:=gt[i]-1 downto 2 do
    gt[i]:=gt[i]*j;
  end;
  tong:=1-2*2+3*(2*3);
  for i:=4 to n do
  if odd(i) then
  tong:=tong+i*gt[i]
  else tong:=tong-i*gt[i];
  assign(f,'080.out');
  rewrite(f);
  if (n<4) or (n>20) then write(f,'N khong hop le') else
  write(f,tong);
  close(f);
end.
{Tinh Sn=1+2*2!+3*3!+4*4!+...+(-1)^n-1*n*n!}