var f:text;
a:string[250];
i,dd,maxdd,maxvt:byte;
begin
  assign(f,'102.inp');
  reset(f);
  read(f,a);
  close(f);
  for i:=1 to length(a) do
    if a[i] in ['0'..'9'] then inc(dd) else
      if dd>maxdd then
      begin
        maxdd:=dd;
        dd:=0;
        maxvt:=i;
      end;
  assign(f,'102.out');
  rewrite(f);
  writeln(f,maxdd);
  for i:=maxvt-maxdd to maxvt-1 do write(f,a[i]);
  close(f);
end.
{In do dai day so dai nhat trong xau}