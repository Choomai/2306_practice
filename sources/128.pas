var f:text;
tmp,max:longint;
n,i,j:word;
a:array[1..1000] of integer;
begin
  assign(f,'128.inp');
  reset(f);
  readln(f,n);
  for i:=1 to n do read(f,a[i]);
  close(f);
  for i:=1 to n do
  begin
    tmp:=0;
    for j:=i to n do
    begin
      if max<tmp then max:=tmp;
      tmp:=tmp+a[j];
    end;
  end;
  assign(f,'128.out');
  rewrite(f);
  write(f,max);
  close(f);
end.
{Tim doan con co tong cac gia tri cua doan do lon nhat}