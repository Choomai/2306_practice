var f:text;
s:string;
i,dem,max,vt:byte;
begin
  assign(f,'056.inp');
  reset(f);
  read(f,s);
  close(f);
  for i:=1 to length(s) do if s[i] in ['0'..'9'] then
    begin
      inc(dem);
      if dem>max then
      begin
        max:=dem;
        vt:=i;
      end;
    end
    else dem:=0;
  assign(f,'056.out');
  rewrite(f);
  writeln(f,max);
  write(f,copy(s,vt-max+1,max));
  close(f);
end.
{Tinh tong cac chu so trong day so lon nhat trong xau}