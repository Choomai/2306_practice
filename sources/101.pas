var f:text;
sa:string[200];
chkmax:string[1];
tong:integer;
vt:array[1..200] of byte;
i,j,max,tempmax:byte;
begin
  assign(f,'101.inp');
  reset(f);
  read(f,sa);
  close(f);
  for i:=1 to length(sa) do
  begin
    chkmax:=sa[i];
    val(chkmax,tempmax);
    tong:=tong+tempmax;
    if tempmax>max then max:=tempmax;
  end;
  str(max,chkmax);
  for i:=1 to length(sa) do
    if sa[i]=chkmax then
    begin
      inc(j);
      vt[j]:=i;
    end;
  assign(f,'101.out');
  rewrite(f);
  writeln(f,tong);
  writeln(f,max);
  for i:=1 to j do write(f,vt[i],' ');
  close(f);
end.
{Tinh tong cac chu so cua a, in ra chu so lon nhat va vi tri cua no}