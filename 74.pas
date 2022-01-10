var f:text;
tam1,tam2:string;
x,y,i:longint;
begin
  assign(f,'74.inp');
  reset(f);
  read(f,x);
  close(f);
  str(x,tam1);
  for i:=length(tam1) downto 1 do tam2:=tam2+tam1[i];
  val(tam2,y);
  assign(f,'74.out');
  rewrite(f);
  write(f,y mod 19);
  close(f);
end.
{So dao nguoc SODAO}