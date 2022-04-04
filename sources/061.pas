uses crt;
var gt:array[4..20] of int64;
n,tong:int64;
i,j:longint;
begin
  clrscr;
  write('Nhap n:');readln(n);
  while not (4>=n) and (n<=20) do
  begin
    writeln('N khong hop le');
    readln(n);
  end;
  for i:=4 to 20 do
  begin
    gt[i]:=i;
    for j:=gt[i]-1 downto 2 do gt[i]:=gt[i]*j;
  end;
  tong:=1-2*2+3*(2*3);
  for i:=4 to n do if odd(i) then tong:=tong+i*gt[i]
  else tong:=tong-i*gt[i];
  write(tong);
end.
{Tinh Sn=1+2*2!+3*3!+4*4!+...+(-1)^n-1*n*n!}