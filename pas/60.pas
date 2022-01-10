var f:text;
a:array[1..100,1..100] of longint;
max,min,m,n,i,j,vt:longint;
begin
assign(f,'60.inp');
reset(f);
read(f,m);
n:=round(sqrt(m));
for i:=1 to m do
for j:=1 to n do
read(f,a[i,j]);
close(f);
assign(f,'60.out');
rewrite(f);
for i:=1 to n do
begin
 min:=a[i,1];
 for j:=2 to m do
  if min>=a[i,j] then
  begin
   min:=a[i,j];
   vt:=j;
  end;
 max:=a[1,vt];
 for j:=2 to m do if max<=a[j,vt] then max:=a[j,vt];
 if max=min then writeln(f,'(',i,',',vt,')')
end;
close(f);
end.
