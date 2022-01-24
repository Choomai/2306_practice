var f:text;
a:array[1..100] of longint;
i,j,n,tam:longint;
begin
  assign(f,'097.inp');
  reset(f);
  read(f,n);
  for i:=1 to n do read(f,a[i]);
  close(f);
  for i:=1 to n do
    for j:=1 to n do
    if a[i]>a[j] then
    begin
      tam:=a[j];
      a[j]:=a[i];
      a[i]:=tam;
    end;
  assign(f,'097.out');
  rewrite(f);
  write(f,'Day so sau khi sap xep: ');
  for i:=1 to n do write(f,a[i],';');
  writeln(f);
  write(f,'Cac phan tu la so chinh phuong: ');
  for i:=1 to n do if a[i]=sqr(trunc(sqrt(a[i]))) then write(f,a[i],';');
  close(f);
end.
{Sap xep day so tu lon -> be va in cac so chinh phuong trong mang}