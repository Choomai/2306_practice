var i,j,n:longint;
a:array[1..10000,1..10000] of integer;
begin
  read(n);
  for i:=1 to n do
  begin
    a[i,n]:=1;
    a[n,i]:=1;
  end;
  for i:=n-1 downto 1 do
    for j:=n-1 downto 1 do
    begin
      a[i,j]:=a[i+1,j]+a[i,j+1];
    end;
  write(a[1,1]);
end.
{Duong di https://youtu.be/AQshvrC3tfw}