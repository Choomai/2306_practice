var f:text;
nt:array[1..50] of longint;
n:longint;
dem,tam,i,j:integer;
begin
assign(f,'51.inp');
reset(f);
read(f,n);
close(f);
for i:=1 to 500 do
begin
 dem:=0;
 if tam=50 then break;
 for j:=1 to i do
 if i mod j=0 then inc(dem);
 if dem=2 then
 begin
  inc(tam);
  nt[tam]:=i;
 end;
end;
for i:=50 downto 1 do
if n>=nt[i] then break;
assign(f,'51.out');
rewrite(f);
write(f,n,' ');
for j:=i downto 1 do
write(f,nt[j],' ');
close(f);
end.
