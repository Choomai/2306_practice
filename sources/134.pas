var tmp1,tmp2:string;
i,m,cnt:integer;
begin
  read(m);
  str(m,tmp1);
  for i:=length(tmp1) downto 1 do tmp2:=tmp2+tmp1[i];
  val(tmp2,m);
  writeln(m);
  for i:=1 to m do if m mod i=0 then inc(cnt);
  if cnt=2 then write('CO') else write('KHONG');
end.