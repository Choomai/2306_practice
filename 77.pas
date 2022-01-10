var f:text;
w:array[1..100] of longint;
a,n,m,tam,tong:longint;
i,j:byte;
begin
  assign(f,'77.inp');
  reset(f);
  read(f,n,a,m);
  close(f);
  for i:=1 to n do 
  begin
    tam:=1;
    for j:=1 to i do tam:=tam*a;
    w[i]:=(tam mod m)+1;
  end;
  assign(f,'77.out');
  rewrite(f);
  for i:=1 to n do tong:=tong+w[i];
  write(f,tong);
  close(f);
end.