var f:text;
a,b,c:array[1..100] of longint;
i,j,n,m,tam:longint;
begin
  assign(f,'76.inp');
  reset(f);
  read(f,n,m);
  for i:=1 to n do read(f,a[i]);
  for i:=1 to m do read(f,b[i]);
  close(f);
  for i:=1 to n do c[i]:=a[i];
  tam:=i;
  for i:=1 to m do 
  begin
    inc(tam);
    c[tam]:=b[i];
  end;
  assign(f,'76.out');
  rewrite(f);
  for i:=1 to n+m do
    for j:=1 to n+m do
    if c[i]<c[j] then 
      begin
        tam:=c[i];
        c[i]:=c[j];
        c[j]:=tam;
      end;
  for i:=1 to n+m do writeln(f,c[i]);
  close(f);
end.
{Tron mang TRONMANG}