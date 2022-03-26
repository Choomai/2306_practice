var f:text;
a:array[1..5,1..5] of longint;
tongdcc,tongdcp,tongpthc,tongpthl:longint;
i,j,n,m,tam:integer;
tam1:real;
begin
  assign(f,'050.inp');
  reset(f);
  read(f,m);
  for i:=5 downto 2 do
  begin
    n:=i;
    if n=sqrt(m) then break;
  end;
  for i:=1 to n do
    for j:=1 to n do read(f,a[i][j]);
  close(f);
  for i:=1 to n do tongdcc:=tongdcc+a[i][i];
  for i:=n downto 1 do
  begin
    inc(tam);
    tongdcp:=tongdcp+a[i][tam];
  end;
  for i:=1 to n do
    for j:=1 to n do if odd(i) then else tongpthc:=tongpthc+a[i][j];
  for i:=1 to n do
    for j:=1 to n do if odd(i) then tongpthl:=tongpthl+a[i][j];
  assign(f,'050.out');
  rewrite(f);
  writeln(f,'Tong cac phan tu tren cheo chinh la: ',tongdcc);
  writeln(f,'Tong cac phan tu tren cheo phu la: ',tongdcp);
  writeln(f,'Tong cac phan tu tren hang chan la: ',tongpthc);
  writeln(f,'Tong cac phan tu tren hang le: ',tongpthl);
  close(f);
end.