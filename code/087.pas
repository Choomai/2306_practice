uses crt;
var f:text;
nt:array[1..100] of longint;
n,m,dem,i,tam,j:longint;
res:boolean;
begin
  clrscr;
  write('Nhap n:');readln(n);
  write('Nhap m:');readln(m);
  for i:=1 to 541 do
  begin
    dem:=0;
    if tam=50 then break;
    for j:=1 to i do if i mod j=0 then inc(dem);
    if dem=2 then
    begin
      inc(tam);
      nt[tam]:=i;
    end;
  end;
  for i:=1 to 100 do if (nt[i] mod n=0) and (nt[i] mod m=0) then res:=true;
  if res=true then write(n,' va ',m,' la nguyen to tuong duong');
end.
{Kiem tra n,m la nguyen to tuong duong}