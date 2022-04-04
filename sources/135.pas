var stri:string;
i,j,k,n,ttl:longint;
subi,lt:array[1..255] of longint;
begin
  read(n);
  for i:=1 to n do
  begin
    str(i,stri);
    ttl:=0;
    for j:=1 to length(stri) do lt[j]:=1;
    for j:=1 to length(stri) do val(stri[j],subi[j]);
    for j:=1 to length(stri) do
      for k:=1 to length(stri) do lt[j]:=lt[j]*subi[j];
    for j:=1 to length(stri) do ttl:=ttl+lt[j];
    if ttl=i then write(i,' ');
  end;
end.
{So ArmStrong}