var f:text;
tam:array[1..128] of string;
a:string;
vt:array[1..128] of byte;
i,j,k:byte;
const chars=['0'..'9', 'a'..'z', 'A'..'Z'];
begin
  assign(f,'063.inp');
  reset(f);
  read(f,a);
  close(f);
  j:=1;
  for i:=length(a) downto 1 do
    if a[i]=#32 then inc(j) else
      if a[i] in chars then tam[j]:=tam[j]+a[i] else 
        begin
          inc(k);
          vt[k]:=i;
        end;
  assign(f,'063.out');
  rewrite(f);
  for i:=j downto 1 do
    if a[vt[i]]='' then write(f,tam[i],' ') else write(f,tam[i],a[vt[i]]); //  is a bug.
  close(f);
end.
{Đảo ngược các từ nhưng giữ nguyên dấu}